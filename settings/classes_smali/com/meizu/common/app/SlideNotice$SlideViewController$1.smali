.class Lcom/meizu/common/app/SlideNotice$SlideViewController$1;
.super Ljava/lang/Object;
.source "SlideNotice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice$SlideViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;


# direct methods
.method constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .registers 2

    .line 623
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 628
    iget-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$100(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 629
    iget-object p0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$100(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/os/Message;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    if-eqz p0, :cond_19

    .line 634
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_19
    return-void
.end method
