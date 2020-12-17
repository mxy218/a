.class Lflyme/support/v7/view/PermissionViewHandlerImpl23$2;
.super Ljava/lang/Object;
.source "PermissionViewHandlerImpl23.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/view/PermissionViewHandlerImpl23;->bindData(Lflyme/support/v7/view/PermissionDialogView$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/view/PermissionViewHandlerImpl23;


# direct methods
.method constructor <init>(Lflyme/support/v7/view/PermissionViewHandlerImpl23;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23$2;->this$0:Lflyme/support/v7/view/PermissionViewHandlerImpl23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 121
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23$2;->this$0:Lflyme/support/v7/view/PermissionViewHandlerImpl23;

    invoke-static {v0}, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->access$300(Lflyme/support/v7/view/PermissionViewHandlerImpl23;)Lflyme/support/v7/widget/PermissionScrollView;

    move-result-object v1

    iget-object v2, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23$2;->this$0:Lflyme/support/v7/view/PermissionViewHandlerImpl23;

    invoke-static {v2}, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->access$000(Lflyme/support/v7/view/PermissionViewHandlerImpl23;)Landroid/view/View;

    move-result-object v2

    iget-object p0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23$2;->this$0:Lflyme/support/v7/view/PermissionViewHandlerImpl23;

    invoke-static {p0}, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->access$100(Lflyme/support/v7/view/PermissionViewHandlerImpl23;)Landroid/view/View;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->access$200(Lflyme/support/v7/view/PermissionViewHandlerImpl23;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
