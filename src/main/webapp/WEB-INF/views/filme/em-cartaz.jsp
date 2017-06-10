<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="ingresso" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<ingresso:template>
	<jsp:body>
		<div class="col-md-6 col-md-offset-3">
			<c:forEach var="filme" items="${filmes}">
				<div class="col-md-4">
					<a	href="/filme/${filme.id}/detalhe">
						<div class="panel panel-default panelSize">
							<div class="panel-heading text-center"><strong>${filme.nome}</strong></div>
							<div class="panel-body">
								<div><strong>Genero:</strong> ${filme.genero}</div>
								<div><strong>Duração:</strong> ${filme.duracao.toMinutes()} minutos</div>
							</div>
						</div>
					</a>
				</div>
				<style>
					a:hover {
						text-decoration: none;
					}
					.panel {
						transition: transform 0.7s;
					}
					.panel:hover {
						transform: translateY(-0.5em);
					}
					.panelSize {
						height: 10.5em;
						width: 13em;
						overflow: hidden;
					}
				</style>
			</c:forEach>
		</div>
	</jsp:body>
</ingresso:template>