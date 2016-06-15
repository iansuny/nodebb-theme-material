<div class="topic">
	<!-- IMPORT partials/breadcrumbs.tpl -->
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="listview lv-lg">
					<div class="lv-header-alt" component="post/header" itemprop="name">
						<div class="title">
							<i class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"></i> <i class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->"></i> <span class="topic-title" component="topic/title">{title}</span>
							<ul class="lv-actions actions">
								<!-- IMPORT partials/topic/sort.tpl -->
								<li>
								    <span component="topic/follow" class="<!-- IF isFollowing -->hidden<!-- ENDIF isFollowing -->">
										<i class="fa fa-eye"></i>
									</span>

									<span component="topic/unfollow" class="<!-- IF !isFollowing -->hidden<!-- ENDIF !isFollowing -->">
										<i class="fa fa-eye-slash"></i>
									</span>
								</li>
							</ul>
						</div>
					</div>

					<div class="lv-body">
						<div component="topic" data-tid="{tid}">
						<!-- BEGIN posts -->
							<!-- IMPORT partials/topic/post.tpl -->
						<!-- END posts -->
						</div>
						
						<div class="post-bar">
							<!-- IMPORT partials/post_bar.tpl -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->
</div>
<!-- IF !config.usePagination -->
	<noscript>
	<!-- IMPORT partials/paginator.tpl -->
	</noscript>
<!-- ENDIF !config.usePagination -->