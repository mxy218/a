.class final Lcom/meizu/settings/display/BrightnessPreference$BrightnessChangedCallback;
.super Landroid/os/IBrightnessChangedCallback$Stub;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BrightnessChangedCallback"
.end annotation


# instance fields
.field private mBrightnessPreference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/meizu/settings/display/BrightnessPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/BrightnessPreference;)V
    .registers 3

    .line 268
    invoke-direct {p0}, Landroid/os/IBrightnessChangedCallback$Stub;-><init>()V

    .line 269
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/settings/display/BrightnessPreference$BrightnessChangedCallback;->mBrightnessPreference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBrightnessChanged(I)V
    .registers 3

    .line 274
    iget-object p0, p0, Lcom/meizu/settings/display/BrightnessPreference$BrightnessChangedCallback;->mBrightnessPreference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/display/BrightnessPreference;

    if-eqz p0, :cond_18

    .line 276
    iget-object p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 276
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_18
    return-void
.end method
