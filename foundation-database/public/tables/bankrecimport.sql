select xt.create_table('bankrecimport', 'public');

ALTER TABLE public.bankrecimport DISABLE TRIGGER ALL;

SELECT xt.add_column('bankrecimport', 'bankrecimport_id',             'SERIAL', 'PRIMARY KEY', 'public'),
       xt.add_column('bankrecimport', 'bankrecimport_reference',        'TEXT', NULL, 'public'),
       xt.add_column('bankrecimport', 'bankrecimport_descrip',          'TEXT', NULL, 'public'),
       xt.add_column('bankrecimport', 'bankrecimport_comment',          'TEXT', NULL, 'public'),
       xt.add_column('bankrecimport', 'bankrecimport_debit_amount',  'NUMERIC', NULL, 'public'),
       xt.add_column('bankrecimport', 'bankrecimport_credit_amount', 'NUMERIC', NULL, 'public'),
       xt.add_column('bankrecimport', 'bankrecimport_effdate',          'DATE', NULL, 'public'),
       xt.add_column('bankrecimport', 'bankrecimport_curr_rate',     'NUMERIC', NULL, 'public');

ALTER TABLE public.bankrecimport ENABLE TRIGGER ALL;

