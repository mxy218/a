.class Lflyme/support/v7/widget/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/ToolbarWidgetWrapper;-><init>(Lflyme/support/v7/widget/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Lflyme/support/v7/view/menu/ActionMenuItem;

.field final synthetic this$0:Lflyme/support/v7/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/ToolbarWidgetWrapper;)V
    .registers 9

    .line 211
    iput-object p1, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance p1, Lflyme/support/v7/view/menu/ActionMenuItem;

    iget-object v0, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lflyme/support/v7/widget/ToolbarWidgetWrapper;->access$000(Lflyme/support/v7/widget/ToolbarWidgetWrapper;)Lflyme/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    .line 213
    invoke-static {v0}, Lflyme/support/v7/widget/ToolbarWidgetWrapper;->access$100(Lflyme/support/v7/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object p1, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$1;->mNavItem:Lflyme/support/v7/view/menu/ActionMenuItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 216
    iget-object p1, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {p1}, Lflyme/support/v7/widget/ToolbarWidgetWrapper;->access$200(Lflyme/support/v7/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {p1}, Lflyme/support/v7/widget/ToolbarWidgetWrapper;->access$300(Lflyme/support/v7/widget/ToolbarWidgetWrapper;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 217
    iget-object p1, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Lflyme/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {p1}, Lflyme/support/v7/widget/ToolbarWidgetWrapper;->access$200(Lflyme/support/v7/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object p1

    const/4 v0, 0x0

    iget-object p0, p0, Lflyme/support/v7/widget/ToolbarWidgetWrapper$1;->mNavItem:Lflyme/support/v7/view/menu/ActionMenuItem;

    invoke-interface {p1, v0, p0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_1c
    return-void
.end method
