.class public Lcom/android/server/policy/gesture/SystemGestureClient;
.super Ljava/lang/Object;
.source "SystemGestureClient.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public gesture:I

.field public key:Landroid/os/IBinder;

.field public listener:Landroid/view/ISystemGestureListener;

.field public pkg:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;IILandroid/view/ISystemGestureListener;)V
    .registers 7
    .param p1, "key"  # Landroid/os/IBinder;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "uid"  # I
    .param p4, "gesture"  # I
    .param p5, "listener"  # Landroid/view/ISystemGestureListener;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "SystemGestureItem"

    iput-object v0, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->TAG:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->key:Landroid/os/IBinder;

    .line 27
    iput-object p2, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->pkg:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->uid:I

    .line 29
    iput p4, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->gesture:I

    .line 30
    iput-object p5, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->listener:Landroid/view/ISystemGestureListener;

    .line 31
    return-void
.end method

.method private equals(Lcom/android/server/policy/gesture/SystemGestureClient;)Z
    .registers 4
    .param p1, "o"  # Lcom/android/server/policy/gesture/SystemGestureClient;

    .line 39
    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->pkg:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/policy/gesture/SystemGestureClient;->pkg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->uid:I

    iget v1, p1, Lcom/android/server/policy/gesture/SystemGestureClient;->uid:I

    if-ne v0, v1, :cond_20

    iget v0, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->gesture:I

    iget v1, p1, Lcom/android/server/policy/gesture/SystemGestureClient;->gesture:I

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->key:Landroid/os/IBinder;

    iget-object v1, p1, Lcom/android/server/policy/gesture/SystemGestureClient;->key:Landroid/os/IBinder;

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"  # Ljava/lang/Object;

    .line 35
    instance-of v0, p1, Lcom/android/server/policy/gesture/SystemGestureClient;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/android/server/policy/gesture/SystemGestureClient;

    invoke-direct {p0, v0}, Lcom/android/server/policy/gesture/SystemGestureClient;->equals(Lcom/android/server/policy/gesture/SystemGestureClient;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemGestureClient{TAG=\'SystemGestureItem\', key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->key:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", gesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->gesture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGestureClient;->listener:Landroid/view/ISystemGestureListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
