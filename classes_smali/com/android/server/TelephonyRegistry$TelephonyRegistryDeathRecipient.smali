.class Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyRegistryDeathRecipient"
.end annotation


# instance fields
.field private final binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "binder"  # Landroid/os/IBinder;

    .line 334
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->binder:Landroid/os/IBinder;

    .line 336
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 340
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->access$900()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$100(Ljava/lang/String;)V

    .line 341
    :cond_1c
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->this$0:Lcom/android/server/TelephonyRegistry;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->binder:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/TelephonyRegistry;->access$1000(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    .line 342
    return-void
.end method
