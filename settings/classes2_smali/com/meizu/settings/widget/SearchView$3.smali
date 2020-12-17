.class Lcom/meizu/settings/widget/SearchView$3;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/SearchView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/SearchView;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/meizu/settings/widget/SearchView$3;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 174
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView$3;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {p0, p2, p3}, Lcom/meizu/settings/widget/SearchView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    const/4 p0, 0x0

    return p0
.end method
