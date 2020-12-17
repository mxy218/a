.class Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$7;
.super Ljava/lang/Object;
.source "AppPeekAndPopLayout.java"

# interfaces
.implements Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->onTouchMove(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;


# direct methods
.method constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V
    .registers 2

    .line 503
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$7;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseCurMenu()V
    .registers 1

    return-void
.end method

.method public onDestructCurMenu(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 508
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 509
    iget-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$7;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    iget-object p2, p2, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPackageName:Ljava/lang/String;

    const-string/jumbo p3, "package_name"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "close_peek"

    const-string p3, "click_menu"

    .line 510
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$7;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    const-string p2, "force_touch_peek"

    invoke-virtual {p0, p2, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->buildUsageStats(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onSubMenuSelected(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;)V
    .registers 3

    .line 520
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$7;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-static {v0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->access$502(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;)Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    .line 521
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$7;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-static {p1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->access$500(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 522
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$7;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-static {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->access$600(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Landroid/widget/ListAdapter;)V

    return-void
.end method
