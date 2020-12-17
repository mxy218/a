.class Lcom/flyme/systemui/qs/MzQSTileView$H;
.super Landroid/os/Handler;
.source "MzQSTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/MzQSTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/MzQSTileView;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/qs/MzQSTileView;)V
    .registers 2

    .line 299
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileView$H;->this$0:Lcom/flyme/systemui/qs/MzQSTileView;

    .line 300
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 304
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 305
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileView$H;->this$0:Lcom/flyme/systemui/qs/MzQSTileView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    :cond_e
    return-void
.end method
