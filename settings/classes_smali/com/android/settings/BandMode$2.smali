.class Lcom/android/settings/BandMode$2;
.super Landroid/os/Handler;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BandMode;


# direct methods
.method constructor <init>(Lcom/android/settings/BandMode;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/android/settings/BandMode$2;->this$0:Lcom/android/settings/BandMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2a

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_b

    goto :goto_33

    .line 223
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 225
    iget-object v0, p0, Lcom/android/settings/BandMode$2;->this$0:Lcom/android/settings/BandMode;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/BandMode$2;->this$0:Lcom/android/settings/BandMode;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_33

    .line 230
    iget-object p0, p0, Lcom/android/settings/BandMode$2;->this$0:Lcom/android/settings/BandMode;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lcom/android/settings/BandMode;->access$500(Lcom/android/settings/BandMode;Ljava/lang/Throwable;)V

    goto :goto_33

    .line 217
    :cond_2a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 219
    iget-object p0, p0, Lcom/android/settings/BandMode$2;->this$0:Lcom/android/settings/BandMode;

    invoke-static {p0, p1}, Lcom/android/settings/BandMode;->access$400(Lcom/android/settings/BandMode;Landroid/os/AsyncResult;)V

    :cond_33
    :goto_33
    return-void
.end method
