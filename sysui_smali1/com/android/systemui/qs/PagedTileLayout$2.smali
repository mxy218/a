.class Lcom/android/systemui/qs/PagedTileLayout$2;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "PagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/PagedTileLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/PagedTileLayout;)V
    .registers 2

    .line 410
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .registers 6

    .line 424
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$200(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 425
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    int-to-float v1, p1

    add-float/2addr v1, p2

    invoke-static {v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->access$502(Lcom/android/systemui/qs/PagedTileLayout;F)F

    .line 426
    iget-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {p2}, Lcom/android/systemui/qs/PagedTileLayout;->access$200(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$500(Lcom/android/systemui/qs/PagedTileLayout;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 427
    iget-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {p2}, Lcom/android/systemui/qs/PagedTileLayout;->access$300(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object p2

    if-eqz p2, :cond_4d

    .line 428
    iget-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {p2}, Lcom/android/systemui/qs/PagedTileLayout;->access$300(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p3, :cond_49

    iget-object p3, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    .line 429
    invoke-virtual {p3}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result p3

    if-eqz p3, :cond_46

    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {p0}, Lcom/android/systemui/qs/PagedTileLayout;->access$400(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_49

    goto :goto_4a

    :cond_46
    if-nez p1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    .line 428
    :goto_4a
    invoke-interface {p2, v0}, Lcom/android/systemui/qs/PagedTileLayout$PageListener;->onPageChanged(Z)V

    :cond_4d
    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    .line 413
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$100(Lcom/android/systemui/qs/PagedTileLayout;)V

    .line 414
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$200(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 415
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$300(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 416
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$300(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_34

    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {p0}, Lcom/android/systemui/qs/PagedTileLayout;->access$400(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v3

    if-ne p1, p0, :cond_37

    goto :goto_36

    :cond_34
    if-nez p1, :cond_37

    :goto_36
    move v2, v3

    :cond_37
    invoke-interface {v0, v2}, Lcom/android/systemui/qs/PagedTileLayout$PageListener;->onPageChanged(Z)V

    :cond_3a
    return-void
.end method
