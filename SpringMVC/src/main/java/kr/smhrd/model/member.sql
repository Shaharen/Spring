-- 게시판 테이블 생성
create table tmember(
	id varchar(200) not null,
	pw varchar(200) not null,
	nick varchar(200) not null,
	tel varchar(200) not null,
	primary key(id)
)

select * from tmember

-- MySql에서는 공백을 공백문자로 취급한다. 
select * from tmember where pw is null