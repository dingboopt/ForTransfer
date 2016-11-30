        operation_dict = {
            'object_type': object_type,
            'object_uuid': context.current['id'],
            'tenant_id': (context.current['tenant_id'] or
                          context.network.current['tenant_id']),
            'operation': operation,
            'session': context._plugin_context.session
        }
        other_kwargs = dict((k, v) for k, v in kwargs.items() if v)
        operation_dict.update(other_kwargs)
        db_utils.insert_operation_row(**operation_dict)
