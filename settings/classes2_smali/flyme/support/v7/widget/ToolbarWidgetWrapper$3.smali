.class Lflyme/support/v7/widget/ToolbarWidgetWrapper$3;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/ToolbarWidgetWrapper;->ensureControlTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

.field final synthetic val$mPositiveItem:Lflyme/support/v7/view/menu/ActionMenuItem;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/ToolbarWidgetWrapper;Lflyme/support/v7/view/menu/ActionMenuItem;)V
    .registers 3

    .line 665
    iput-object p1, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$3;->this$0:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    iput-object p2, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$3;->val$mPositiveItem:Lflyme/support/v7/view/menu/ActionMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 669
    iget-object p1, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$3;->this$0:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {p1}, Lflyme/support/v7/widget/ToolbarWidgetWrapper;->access$200(Lflyme/support/v7/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$3;->this$0:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {p1}, Lflyme/support/v7/widget/ToolbarWidgetWrapper;->access$300(Lflyme/support/v7/widget/ToolbarWidgetWrapper;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 670
    iget-object p1, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$3;->this$0:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {p1}, Lflyme/support/v7/widget/ToolbarWidgetWrapper;->access$200(Lflyme/support/v7/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object p1

    const/4 v0, 0x0

    iget-object p0, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$3;->val$mPositiveItem:Lflyme/support/v7/view/menu/ActionMenuItem;

    invoke-interface {p1, v0, p0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_1c
    return-void
.end method
