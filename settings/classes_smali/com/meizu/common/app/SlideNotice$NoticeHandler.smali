.class final Lcom/meizu/common/app/SlideNotice$NoticeHandler;
.super Landroid/os/Handler;
.source "SlideNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoticeHandler"
.end annotation


# instance fields
.field private mNotice:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/meizu/common/app/SlideNotice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meizu/common/app/SlideNotice;)V
    .registers 3

    .line 1217
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1218
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$NoticeHandler;->mNotice:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1223
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_14

    .line 1225
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

    iget-object p0, p0, Lcom/meizu/common/app/SlideNotice$NoticeHandler;->mNotice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/common/app/SlideNotice;

    invoke-interface {p1, p0}, Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;->onClick(Lcom/meizu/common/app/SlideNotice;)V

    :goto_14
    return-void
.end method
