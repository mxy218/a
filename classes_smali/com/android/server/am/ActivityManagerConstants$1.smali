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
    .param p1, "this$0"  # Lcom/android/server/am/ActivityManagerConstants;

    .line 317
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 8
    .param p1, "properties"  # Landroid/provider/DeviceConfig$Properties;

    .line 320
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 321
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_17

    .line 322
    return-void

    .line 324
    :cond_17
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6a37b8d0

    const/4 v5, 0x1

    if-eq v3, v4, :cond_33

    const v4, -0x41254a05

    if-eq v3, v4, :cond_28

    :cond_27
    goto :goto_3c

    :cond_28
    const-string/jumbo v3, "max_cached_processes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v2, 0x0

    goto :goto_3c

    :cond_33
    const-string v3, "default_background_activity_starts_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    move v2, v5

    :goto_3c
    if-eqz v2, :cond_47

    if-eq v2, v5, :cond_41

    goto :goto_4d

    .line 329
    :cond_41
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$100(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 330
    goto :goto_4d

    .line 326
    :cond_47
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$000(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 327
    nop

    .line 334
    .end local v1  # "name":Ljava/lang/String;
    :goto_4d
    goto :goto_8

    .line 335
    :cond_4e
    return-void
.end method
