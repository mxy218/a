.class Lcom/android/server/locksettings/LockSettingsStrongAuth$1;
.super Landroid/os/Handler;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStrongAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    goto :goto_40

    .line 217
    :cond_12
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$400(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    goto :goto_40

    .line 214
    :cond_1a
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$300(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 215
    goto :goto_40

    .line 208
    :cond_22
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/IStrongAuthTracker;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$100(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    .line 209
    goto :goto_40

    .line 205
    :cond_2c
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/IStrongAuthTracker;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$000(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    .line 206
    goto :goto_40

    .line 211
    :cond_36
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$200(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V

    .line 212
    nop

    .line 220
    :goto_40
    return-void
.end method
