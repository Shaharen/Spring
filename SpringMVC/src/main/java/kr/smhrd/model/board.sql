--게시판 테이블 생성
create table tboard(
	idx int not null auto_increment,
	title varchar(1000) not null,
	contents varchar(1000) not null,
	count int not null default 0,
	writer varchar(100) not null,
	indate datetime not null default now(),
	primary key(idx)
);

insert into tboard(title, contents, writer)
values('졸립니다','집에 가서 잘래요','잠만보');
insert into tboard(title, contents, writer)
values('드립 구합니다','짤당 500원','한국인');
insert into tboard(title, contents, writer)
values('1213사냥 모집','3떙 사냥팟 모집중','옹달샘');
insert into tboard(title, contents, writer)
values('믿으세요 여러분','글로리~!!','최찬호');
insert into tboard(title, contents, writer)
values('꽉잡아','정신줄','드렁큰 마스터');
insert into tboard(title, contents, writer)
values('무슨일이지???','휘청거리고 있지않나','어질어질남');

select * from tboard

update tboard set count = 0;

