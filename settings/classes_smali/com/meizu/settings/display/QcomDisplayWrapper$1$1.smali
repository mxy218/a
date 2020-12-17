.class Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;
.super Ljava/lang/Object;
.source "QcomDisplayWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/QcomDisplayWrapper$1;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/QcomDisplayWrapper$1;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;->this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 87
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;->this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    iget-object v0, v0, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget-object v1, v0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v1, :cond_f8

    .line 88
    invoke-static {v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$000(Lcom/meizu/settings/display/QcomDisplayWrapper;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;->this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    iget-object v2, v2, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-static {v2}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$000(Lcom/meizu/settings/display/QcomDisplayWrapper;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {v1, v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 90
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;->this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    iget-object v0, v0, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget-object v1, v0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const-string v2, "QcomDisplayWrapper"

    if-nez v1, :cond_2f

    const-string v0, "Failed to get ColorManager instance."

    .line 91
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f1

    .line 93
    :cond_2f
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$102(Lcom/meizu/settings/display/QcomDisplayWrapper;Z)Z

    .line 94
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;->this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    iget-object v0, v0, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget-object v1, v0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_ALL:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v1, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mModeDataArray:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .line 95
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;->this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    iget-object v0, v0, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget-object v1, v0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mModeDataArray:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    if-eqz v1, :cond_ec

    array-length v3, v1

    if-nez v3, :cond_53

    goto/16 :goto_ec

    .line 98
    :cond_53
    array-length v1, v1

    iput v1, v0, Lcom/meizu/settings/display/QcomDisplayWrapper;->MODE_DATA_ARRAY_MAX_LENGTH:I

    .line 100
    iget-object v0, v0, Lcom/meizu/settings/display/QcomDisplayWrapper;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getDefaultMode()I

    move-result v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultModeId is:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", MODE_DATA_ARRAY_MAX_LENGTH:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;->this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    iget-object v3, v3, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget v3, v3, Lcom/meizu/settings/display/QcomDisplayWrapper;->MODE_DATA_ARRAY_MAX_LENGTH:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;->this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    iget-object v1, v1, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-static {v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$000(Lcom/meizu/settings/display/QcomDisplayWrapper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_b4

    .line 103
    iget-object v1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;->this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    iget-object v1, v1, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/settings/display/BluelightUtils;->getBlueLightConfigType(Landroid/content/Context;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_ae

    .line 104
    iget-object v1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;->this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    iget-object v1, v1, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "blue_reduction_config_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "Always disable green type since 2018-10-10"

    .line 105
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_b4

    add-int/lit8 v0, v0, -0x3c

    .line 114
    :cond_b4
    iget-object v1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;->this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    iget-object v1, v1, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget-object v1, v1, Lcom/meizu/settings/display/QcomDisplayWrapper;->mModeDataArray:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    array-length v2, v1

    :goto_bb
    if-ge v3, v2, :cond_f1

    aget-object v4, v1, v3

    if-eqz v4, :cond_e9

    .line 115
    invoke-virtual {v4}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result v5

    if-ne v5, v0, :cond_e9

    .line 116
    invoke-virtual {v4}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f1

    invoke-virtual {v4}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eye_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 117
    iget-object v0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;->this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    iget-object v0, v0, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentSavedEyeProtectLevel()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$202(Lcom/meizu/settings/display/QcomDisplayWrapper;I)I

    goto :goto_f1

    :cond_e9
    add-int/lit8 v3, v3, 0x1

    goto :goto_bb

    :cond_ec
    :goto_ec
    const-string v0, "Failed to get mode array."

    .line 96
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_f1
    :goto_f1
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1$1;->this$1:Lcom/meizu/settings/display/QcomDisplayWrapper$1;

    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$1;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-static {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$300(Lcom/meizu/settings/display/QcomDisplayWrapper;)V

    :cond_f8
    return-void
.end method
