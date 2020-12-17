.class Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;
.super Ljava/lang/Object;
.source "FlymeMoveWindowControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlymeMoveWindowControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IMoveWinCallbackClient"
.end annotation


# instance fields
.field private mIMoveWinCallback:Lflyme/view/IMoveWinCallback;

.field private pid:I

.field private uid:I


# direct methods
.method constructor <init>(IILflyme/view/IMoveWinCallback;)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "pid"  # I
    .param p3, "moveWinCallback"  # Lflyme/view/IMoveWinCallback;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput p1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->uid:I

    .line 438
    iput p2, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->pid:I

    .line 439
    iput-object p3, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->mIMoveWinCallback:Lflyme/view/IMoveWinCallback;

    .line 440
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;)Lflyme/view/IMoveWinCallback;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->mIMoveWinCallback:Lflyme/view/IMoveWinCallback;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"  # Ljava/lang/Object;

    .line 444
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 445
    :cond_4
    instance-of v1, p1, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 446
    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;

    .line 447
    .local v1, "that":Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;
    iget v3, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->uid:I

    iget v4, v1, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->uid:I

    if-ne v3, v4, :cond_19

    iget v3, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->pid:I

    iget v4, v1, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->pid:I

    if-ne v3, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    return v0

    .line 450
    .end local v1  # "that":Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;
    :cond_1b
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 455
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->pid:I

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

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMoveWinCallbackClient{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIMoveWinCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->mIMoveWinCallback:Lflyme/view/IMoveWinCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
