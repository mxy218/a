.class Lflyme/support/v7/app/FlymeAlertController$3;
.super Ljava/lang/Object;
.source "FlymeAlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/app/FlymeAlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/FlymeAlertController;

.field final synthetic val$bottom:Landroid/view/View;

.field final synthetic val$top:Landroid/view/View;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/FlymeAlertController;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 597
    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController$3;->this$0:Lflyme/support/v7/app/FlymeAlertController;

    iput-object p2, p0, Lflyme/support/v7/app/FlymeAlertController$3;->val$top:Landroid/view/View;

    iput-object p3, p0, Lflyme/support/v7/app/FlymeAlertController$3;->val$bottom:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 600
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$3;->this$0:Lflyme/support/v7/app/FlymeAlertController;

    iget-object v0, v0, Lflyme/support/v7/app/FlymeAlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lflyme/support/v7/app/FlymeAlertController$3;->val$top:Landroid/view/View;

    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController$3;->val$bottom:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lflyme/support/v7/app/FlymeAlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
