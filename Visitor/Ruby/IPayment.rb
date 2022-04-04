class IPayment
    def visit(component)
        raise NotImplementedError
    end
end