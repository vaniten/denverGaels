<div id="idClipMainContainer">
	<div id="idMainContainer">
		<$! Hide top area from widget mode !$>
		<$if (!PageModel.IsWidgetMode)$>
			<div id="idTopArea">
				<$if (PageModel.ShowFreeAccountAds)$>
					<$Layouts/FreeAccountAds()$>
				<$endif$>
				<div id="idTopAreaContent">
					<$if (!PageModel.IsWidgetMode)$>
						<$Gadget Name="Page.Header"$>
					<$endif$>		

					<$Gadget Name="Login.LoginBox.Simple"$>
					
					<div id="idMainMenuContainer">
							<$Gadget Name="Menu.Simple"$>
					</div>
				</div>
			</div>
		<$endif$>

		<div id="idContentContainer" <$if (PageModel.Page.IsItemWithChildren)$>class="rootHasSubitems"<$endif$><$if (!PageModel.Page.IsItemWithChildren)$><$if (PageModel.Page.isChildItem)$>class="rootHasSubitems"<$endif$><$endif$>>
			<$! Hide breadcrumbs from widget mode !$>
			<$if (!PageModel.IsWidgetMode)$>
				<div id="idBreadCrumbsContainer">
					<$Gadget Name="Breadcrumbs.Simple"$>
				</div>
			<$endif$>
			<div id="idContentTopShadow">
				<div class="topleft">
					<div class="topright">
						<div class="topmid"><div class="inner"></div></div>
					</div>
				</div>
			</div>
			<div id="idContentLeftShadow">
				<div id="idContentRightShadow">
					<div id="idContent">
						<div id="idInnerContent">
							<div id="idPrimaryContentContainer">
								<div id="idPrimaryContentBlock1" class="block">
									<$CONTENT$>
								</div>
							</div>
						</div>
					</div>	
				</div>
			</div>
			<div id="idContentBottomLeftShadow">
				<div id="idContentBottomRightShadow">
					<div id="idContentBottom"><div class="inner"></div></div>
				</div>
			</div>
			
			<$Gadget Name="Page.Footer"$>

		</div>

		<$if (PageModel.GlobalUserJavaScript)$>
			<div id="idCustomJsContainer">
				<$PageModel.GlobalUserJavaScript$>
			</div>
		<$endif$>	

		<$if (PageModel.ShowFreeAccountAds)$>
			<$Layouts/FreeAccountTracker()$>
		<$endif$>
	</div>
</div>	

