--liquibase formatted sql
--changeset mahaoyu:1.2 splitStatements:false
CREATE TRIGGER book_trigger AFTER INSERT ON book FOR EACH ROW BEGIN
  INSERT INTO test (`name`) VALUES ('1');
END;
--changeset mahaoyu:1.3 splitStatements:false
CREATE PROCEDURE `proc_adder` ( IN a INT, IN b INT, OUT sum INT ) BEGIN
	DECLARE
		c INT;
	IF
		a IS NULL THEN
			SET a = 0;
	END IF;
	IF
		b IS NULL THEN
			SET b = 0;
	END IF;
	SET sum = a + b;
END;
--changeset mahaoyu:1.4
CREATE VIEW Oceania AS SELECT * FROM book;
--changeset mahaoyu:1.5 splitStatements:false
CREATE FUNCTION hello ( ) RETURNS VARCHAR ( 255 ) BEGIN
RETURN 'Hello  world,i am mysql';
END;
--changeset zhangsan:1.6
INSERT INTO book(name, create_time) VALUES ('测试', '2018-04-21 16:53:48');