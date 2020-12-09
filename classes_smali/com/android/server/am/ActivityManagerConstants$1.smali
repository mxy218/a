.class Lcom/android/server/am/ActivityManagerConstants$1;
.super Ljava/lang/Object;
.source "ActivityManagerConstants.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7

    .line 308
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    if-nez v0, :cond_17

    .line 310
    return-void

    .line 312
    :cond_17
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6a37b8d0

    const/4 v4, 0x1

    if-eq v2, v3, :cond_32

    const v3, -0x41254a05

    if-eq v2, v3, :cond_28

    :cond_27
    goto :goto_3b

    :cond_28
    const-string v2, "max_cached_processes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    goto :goto_3b

    :cond_32
    const-string v2, "default_background_activity_starts_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v1, v4

    :goto_3b
    if-eqz v1, :cond_46

    if-eq v1, v4, :cond_40

    goto :goto_4c

    .line 317
    :cond_40
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->access$100(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 318
    goto :goto_4c

    .line 314
    :cond_46
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->access$000(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 315
    nop

    .line 322
    :goto_4c
    goto :goto_8

    .line 323
    :cond_4d
    return-void
.end method
