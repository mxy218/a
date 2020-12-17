.class public Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;
.super Ljava/lang/Object;
.source "FlymeSingleTonFlymeVoiceSupportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleTonVoiceManagerBuilder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private hintText:Ljava/lang/String;

.field instant:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

.field private packageName:Ljava/lang/String;

.field private voiceListener:Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 228
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->context:Landroid/content/Context;

    return-void

    .line 225
    :cond_8
    new-instance p0, Lcom/meizu/settings/search/FlymeVoiceException;

    const-string p1, "VoiceManagerBuilder : context must not be null"

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/FlymeVoiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBuilder(Landroid/content/Context;)Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;
    .registers 2

    .line 232
    new-instance v0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;

    invoke-direct {v0, p0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized build()Lcom/meizu/settings/search/FlymeVoiceSupportManager;
    .registers 3

    monitor-enter p0

    .line 262
    :try_start_1
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->instant:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    if-eqz v0, :cond_9

    .line 263
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->instant:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_49

    monitor-exit p0

    return-object v0

    .line 265
    :cond_9
    :try_start_9
    new-instance v0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;-><init>(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;)V

    iput-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->instant:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    .line 266
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->instant:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    iget-object v1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$802(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Landroid/content/Context;)Landroid/content/Context;

    .line 267
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->instant:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    iget-object v1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->hintText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$902(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 270
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->instant:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    iget-object v1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$1002(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3a

    .line 272
    :cond_33
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->instant:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    iget-object v1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$1002(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    :goto_3a
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->voiceListener:Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;

    if-eqz v0, :cond_45

    .line 276
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->instant:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    iget-object v1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->voiceListener:Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->registerVoiceListener(Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;)V

    .line 279
    :cond_45
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->instant:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_49

    monitor-exit p0

    return-object v0

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 258
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setHintText(Ljava/lang/String;)Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->hintText:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetPackageName(Ljava/lang/String;)Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setVoiceListener(Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;)Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->voiceListener:Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;

    return-object p0
.end method
