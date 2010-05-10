package com.oren.acmeathletes

class TicketRequestController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    static navigation = true
    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [ticketRequestInstanceList: TicketRequest.list(params), ticketRequestInstanceTotal: TicketRequest.count()]
    }

    def create = {
        def ticketRequestInstance = new TicketRequest()
        ticketRequestInstance.properties = params
        return [ticketRequestInstance: ticketRequestInstance]
    }

    def save = {
        def ticketRequestInstance = new TicketRequest(params)
        if (ticketRequestInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'ticketRequest.label', default: 'TicketRequest'), ticketRequestInstance.id])}"
            redirect(action: "show", id: ticketRequestInstance.id)
        }
        else {
            render(view: "create", model: [ticketRequestInstance: ticketRequestInstance])
        }
    }

    def show = {
        def ticketRequestInstance = TicketRequest.get(params.id)
        if (!ticketRequestInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'ticketRequest.label', default: 'TicketRequest'), params.id])}"
            redirect(action: "list")
        }
        else {
            [ticketRequestInstance: ticketRequestInstance]
        }
    }

    def edit = {
        def ticketRequestInstance = TicketRequest.get(params.id)
        if (!ticketRequestInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'ticketRequest.label', default: 'TicketRequest'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [ticketRequestInstance: ticketRequestInstance]
        }
    }

    def update = {
        def ticketRequestInstance = TicketRequest.get(params.id)
        if (ticketRequestInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (ticketRequestInstance.version > version) {
                    
                    ticketRequestInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'ticketRequest.label', default: 'TicketRequest')] as Object[], "Another user has updated this TicketRequest while you were editing")
                    render(view: "edit", model: [ticketRequestInstance: ticketRequestInstance])
                    return
                }
            }
            ticketRequestInstance.properties = params
            if (!ticketRequestInstance.hasErrors() && ticketRequestInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'ticketRequest.label', default: 'TicketRequest'), ticketRequestInstance.id])}"
                redirect(action: "show", id: ticketRequestInstance.id)
            }
            else {
                render(view: "edit", model: [ticketRequestInstance: ticketRequestInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'ticketRequest.label', default: 'TicketRequest'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def ticketRequestInstance = TicketRequest.get(params.id)
        if (ticketRequestInstance) {
            try {
                ticketRequestInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'ticketRequest.label', default: 'TicketRequest'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'ticketRequest.label', default: 'TicketRequest'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'ticketRequest.label', default: 'TicketRequest'), params.id])}"
            redirect(action: "list")
        }
    }
}
