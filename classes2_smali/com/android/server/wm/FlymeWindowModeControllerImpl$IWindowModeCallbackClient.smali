.class Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;
.super Ljava/lang/Object;
.source "FlymeWindowModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlymeWindowModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IWindowModeCallbackClient"
.end annotation


# instance fields
.field private mCallback:Lflyme/view/IWindowModeCallback;

.field private pid:I

.field private uid:I


# direct methods
.method constructor <init>(IILflyme/view/IWindowModeCallback;)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "pid"  # I
    .param p3, "callback"  # Lflyme/view/IWindowModeCallback;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->uid:I

    .line 292
    iput p2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->pid:I

    .line 293
    iput-object p3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->mCallback:Lflyme/view/IWindowModeCallback;

    .line 294
    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;)Lflyme/view/IWindowModeCallback;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->mCallback:Lflyme/view/IWindowModeCallback;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"  # Ljava/lang/Object;

    .line 298
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 299
    :cond_4
    instance-of v1, p1, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 300
    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;

    .line 301
    .local v1, "that":Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;
    iget v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->uid:I

    iget v4, v1, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->uid:I

    if-ne v3, v4, :cond_19

    iget v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->pid:I

    iget v4, v1, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->pid:I

    if-ne v3, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    return v0

    .line 304
    .end local v1  # "that":Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;
    :cond_1b
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 310
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IWindowModeCallbackClient{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWindowModeCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->mCallback:Lflyme/view/IWindowModeCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
