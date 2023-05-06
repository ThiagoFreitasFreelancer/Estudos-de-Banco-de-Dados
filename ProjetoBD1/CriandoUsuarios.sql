CREATE ROLE estagiario PASSWORD '354430' VALID UNTIL'01/01/2023';
CREATE ROLE thiago PASSWORD '354430' SUPERUSER LOGIN;
CREATE ROLE antonio NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN;


permissão para usuario

GRANT antonio TO estagiario;

GRANT LOGIN TO thiago;

removendo permisão para usuario

REVOKE antonio FROM estagiario;