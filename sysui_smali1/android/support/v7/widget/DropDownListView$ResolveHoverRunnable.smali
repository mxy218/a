.class Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveHoverRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/DropDownListView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/DropDownListView;)V
    .registers 2

    .line 699
    iput-object p1, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/DropDownListView;Landroid/support/v7/widget/DropDownListView$1;)V
    .registers 3

    .line 699
    invoke-direct {p0, p1}, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/support/v7/widget/DropDownListView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 708
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/DropDownListView;->access$102(Landroid/support/v7/widget/DropDownListView;Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;)Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    .line 709
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public post()V
    .registers 2

    .line 713
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .registers 3

    .line 703
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/DropDownListView;->access$102(Landroid/support/v7/widget/DropDownListView;Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;)Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    .line 704
    iget-object p0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->drawableStateChanged()V

    return-void
.end method
