def insert_operation_row(session, object_type, object_uuid,
                         tenant_id, operation, data=None,
                         host=None, magic=None, distributed=None):
    row = models.Operation(object_type=object_type,
                           object_uuid=object_uuid,
                           tenant_id=tenant_id,
                           operation=operation,
                           data=data,
                           host=host,
                           magic=magic,
                           distributed=distributed,
                           created_at=timeutils.utcnow())
    session.add(row)
