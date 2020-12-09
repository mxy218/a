.class public Lcom/android/server/soundtrigger/SoundTriggerHelper;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;,
        Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;,
        Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final INVALID_VALUE:I = -0x80000000

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "SoundTriggerHelper"


# instance fields
.field private mCallActive:Z

.field private final mContext:Landroid/content/Context;

.field private mIsPowerSaveMode:Z

.field private mKeyphraseUuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mModelDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;",
            ">;"
        }
    .end annotation
.end field

.field private mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

.field final mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

.field private mRecognitionRequested:Z

.field private mServiceDisabled:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-static {v1}, Landroid/hardware/soundtrigger/SoundTrigger;->listModules(Ljava/util/ArrayList;)I

    move-result v2

    .line 115
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 116
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 117
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 118
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 119
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    .line 120
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;

    invoke-direct {p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 121
    if-nez v2, :cond_5b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_52

    goto :goto_5b

    .line 127
    :cond_52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    goto :goto_82

    .line 122
    :cond_5b
    :goto_5b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "listModules status="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", # of modules="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundTriggerHelper"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 124
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 129
    :goto_82
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onCallStateChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/PowerManager;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onPowerSaveModeChangedLocked(Z)V

    return-void
.end method

.method private cleanUpExistingKeyphraseModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I
    .registers 5

    .line 218
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v0

    .line 219
    if-eqz v0, :cond_21

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to stop or unload previous model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    const-string v1, "SoundTriggerHelper"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_21
    return v0
.end method

.method private computeRecognitionRequestedLocked()Z
    .registers 4

    .line 1231
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v0, :cond_a

    goto :goto_32

    .line 1235
    :cond_a
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1236
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    .line 1238
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    return v0

    .line 1240
    :cond_2c
    goto :goto_14

    .line 1241
    :cond_2d
    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    .line 1242
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    return v0

    .line 1232
    :cond_32
    :goto_32
    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    .line 1233
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    return v0
.end method

.method private createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 5

    .line 1085
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createKeyphraseModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object p2

    .line 1089
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    return-object p2
.end method

.method private dumpModelStateLocked()V
    .registers 5

    .line 1222
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 1223
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoundTriggerHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    goto :goto_a

    .line 1226
    :cond_39
    return-void
.end method

.method private forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V
    .registers 4

    .line 982
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 983
    return-void
.end method

.method private forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V
    .registers 6

    .line 998
    const-string v0, "SoundTriggerHelper"

    if-eqz p2, :cond_9

    .line 999
    const-string v1, "forceStopAndUnloadModel"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    :cond_9
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez p2, :cond_e

    .line 1002
    return-void

    .line 1004
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result p2

    if-eqz p2, :cond_58

    .line 1005
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping previously started dangling model "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result p2

    if-eqz p2, :cond_40

    .line 1007
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 1008
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    goto :goto_58

    .line 1010
    :cond_40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to stop model "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_58
    :goto_58
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result p2

    if-eqz p2, :cond_d5

    .line 1014
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unloading previously loaded dangling model "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result p2

    if-nez p2, :cond_bd

    .line 1017
    if-eqz p3, :cond_88

    .line 1018
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_91

    .line 1020
    :cond_88
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    :goto_91
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1023
    :goto_9b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b9

    .line 1024
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1025
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b8

    .line 1026
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 1028
    :cond_b8
    goto :goto_9b

    .line 1029
    :cond_b9
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    .line 1030
    goto :goto_d5

    .line 1031
    :cond_bd
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to unload model "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_d5
    :goto_d5
    return-void
.end method

.method private getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I
    .registers 5

    .line 782
    const/high16 v0, -0x80000000

    const-string v1, "SoundTriggerHelper"

    if-nez p1, :cond_c

    .line 783
    const-string p1, "Null RecognitionEvent received."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return v0

    .line 786
    :cond_c
    iget-object p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 788
    if-eqz p1, :cond_1a

    array-length v2, p1

    if-nez v2, :cond_14

    goto :goto_1a

    .line 793
    :cond_14
    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    return p1

    .line 789
    :cond_1a
    :goto_1a
    const-string p1, "Invalid keyphrase recognition event!"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return v0
.end method

.method private getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 3

    .line 1075
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    .line 1076
    if-nez p1, :cond_10

    .line 1077
    const/4 p1, 0x0

    return-object p1

    .line 1079
    :cond_10
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    return-object p1
.end method

.method private getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 5

    .line 1098
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1099
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    if-ne v2, p1, :cond_1d

    .line 1100
    return-object v1

    .line 1102
    :cond_1d
    goto :goto_a

    .line 1103
    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method private getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 4

    .line 1054
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1055
    if-nez v0, :cond_14

    .line 1056
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createGenericModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 1057
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 1058
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result p1

    if-nez p1, :cond_23

    .line 1059
    const-string p1, "SoundTriggerHelper"

    const-string v0, "UUID already used for non-generic model."

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 p1, 0x0

    return-object p1

    .line 1062
    :cond_23
    :goto_23
    return-object v0
.end method

.method private initializeTelephonyAndPowerStateListeners()V
    .registers 8

    .line 933
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    if-eqz v0, :cond_5

    .line 934
    return-void

    .line 936
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 939
    :try_start_9
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_15

    move v2, v4

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    iput-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 942
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v2, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 946
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    if-nez v2, :cond_3a

    .line 947
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    .line 948
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 951
    :cond_3a
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    iget-boolean v2, v2, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 954
    iput-boolean v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_4d

    .line 956
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    nop

    .line 958
    return-void

    .line 956
    :catchall_4d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private internalClearGlobalStateLocked()V
    .registers 6

    .line 874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 876
    :try_start_4
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1f

    .line 878
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 879
    nop

    .line 882
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    if-eqz v0, :cond_1c

    .line 883
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    .line 886
    :cond_1c
    iput-boolean v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    .line 887
    return-void

    .line 878
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private internalClearModelStateLocked()V
    .registers 3

    .line 891
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 892
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    .line 893
    goto :goto_a

    .line 894
    :cond_1a
    return-void
.end method

.method private isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z
    .registers 2

    .line 645
    instance-of p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    return p1
.end method

.method private isRecognitionAllowed()Z
    .registers 5

    .line 1112
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_20

    .line 1113
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 1114
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0x8

    .line 1115
    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 1117
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-nez v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    return v1
.end method

.method private onCallStateChangedLocked(Z)V
    .registers 3

    .line 725
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    if-ne v0, p1, :cond_5

    .line 728
    return-void

    .line 730
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 731
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    .line 732
    return-void
.end method

.method private onGenericRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .registers 7

    .line 649
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string/jumbo v2, "sth_generic_recognition_event"

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 650
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->status:I

    if-eqz v0, :cond_13

    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->status:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_13

    .line 652
    return-void

    .line 654
    :cond_13
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 655
    const-string v2, "SoundTriggerHelper"

    if-eqz v0, :cond_83

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_83

    .line 661
    :cond_24
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v3

    .line 662
    if-nez v3, :cond_41

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generic recognition event: Null callback for model handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-void

    .line 668
    :cond_41
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 671
    :try_start_44
    invoke-interface {v3, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    :try_end_47
    .catch Landroid/os/DeadObjectException; {:try_start_44 .. :try_end_47} :catch_7e
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_48

    .line 677
    goto :goto_4e

    .line 675
    :catch_48
    move-exception v3

    .line 676
    const-string v4, "RemoteException in onGenericSoundTriggerDetected"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 679
    :goto_4e
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v3

    .line 680
    if-nez v3, :cond_6b

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generic recognition event: Null RecognitionConfig for model handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void

    .line 686
    :cond_6b
    iget-boolean p1, v3, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 688
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 689
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result p1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    .line 692
    :cond_7d
    return-void

    .line 672
    :catch_7e
    move-exception p1

    .line 673
    invoke-direct {p0, v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 674
    return-void

    .line 656
    :cond_83
    :goto_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generic recognition event: Model does not exist for handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-void
.end method

.method private onKeyphraseRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .registers 7

    .line 797
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition success"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const-string/jumbo v3, "sth_keyphrase_recognition_event"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 799
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I

    move-result v1

    .line 800
    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v3

    .line 802
    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_5c

    .line 807
    :cond_21
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 808
    const-string p1, "Received onRecognition event without callback for keyphrase model."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void

    .line 812
    :cond_2d
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 815
    :try_start_30
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_37
    .catch Landroid/os/DeadObjectException; {:try_start_30 .. :try_end_37} :catch_57
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_37} :catch_38

    .line 821
    goto :goto_3e

    .line 819
    :catch_38
    move-exception p1

    .line 820
    const-string v1, "RemoteException in onKeyphraseDetected"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 823
    :goto_3e
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object p1

    .line 824
    if-eqz p1, :cond_49

    .line 826
    iget-boolean p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    invoke-virtual {v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 829
    :cond_49
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 830
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result p1

    invoke-direct {p0, v3, p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    .line 832
    :cond_56
    return-void

    .line 816
    :catch_57
    move-exception p1

    .line 817
    invoke-direct {p0, v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 818
    return-void

    .line 803
    :cond_5c
    :goto_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keyphase model data does not exist for ID:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void
.end method

.method private onPowerSaveModeChangedLocked(Z)V
    .registers 3

    .line 735
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-ne v0, p1, :cond_5

    .line 736
    return-void

    .line 738
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 739
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    .line 740
    return-void
.end method

.method private onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .registers 6

    .line 755
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition aborted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_recognition_aborted"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 757
    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object p1

    .line 758
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 759
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 761
    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_21 .. :try_end_28} :catch_30
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_34

    .line 764
    :catch_29
    move-exception p1

    .line 765
    const-string v1, "RemoteException in onRecognitionPaused"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 762
    :catch_30
    move-exception v0

    .line 763
    invoke-direct {p0, p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 768
    :cond_34
    :goto_34
    return-void
.end method

.method private onRecognitionFailureLocked()V
    .registers 4

    .line 771
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition failure"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_recognition_failure_event"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 774
    const/high16 v0, -0x80000000

    :try_start_12
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->sendErrorCallbacksToAllLocked(I)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1d

    .line 776
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 777
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 778
    nop

    .line 779
    return-void

    .line 776
    :catchall_1d
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 777
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    throw v0
.end method

.method private onServiceDiedLocked()V
    .registers 5

    .line 859
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_service_died"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 860
    sget v1, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->sendErrorCallbacksToAllLocked(I)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1f

    .line 862
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 863
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 864
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_1e

    .line 865
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 866
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 869
    :cond_1e
    return-void

    .line 862
    :catchall_1f
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 863
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 864
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v2, :cond_2f

    .line 865
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 866
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    :cond_2f
    throw v1
.end method

.method private onServiceStateChangedLocked(Z)V
    .registers 3

    .line 747
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    if-ne p1, v0, :cond_5

    .line 748
    return-void

    .line 750
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    .line 751
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    .line 752
    return-void
.end method

.method private onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .registers 2

    .line 744
    return-void
.end method

.method private removeKeyphraseModelLocked(I)V
    .registers 4

    .line 1066
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 1067
    if-nez v0, :cond_f

    .line 1068
    return-void

    .line 1070
    :cond_f
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    return-void
.end method

.method private sendErrorCallbacksToAllLocked(I)V
    .registers 7

    .line 962
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 963
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    .line 964
    if-eqz v2, :cond_3b

    .line 966
    :try_start_1c
    invoke-interface {v2, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 970
    goto :goto_3b

    .line 967
    :catch_20
    move-exception v2

    .line 968
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException sendErrorCallbacksToAllLocked for model handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 968
    const-string v3, "SoundTriggerHelper"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    :cond_3b
    :goto_3b
    goto :goto_a

    .line 973
    :cond_3c
    return-void
.end method

.method private startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .registers 11

    .line 1123
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 1124
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    .line 1125
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v2

    .line 1126
    const-string/jumbo v3, "sth_start_recognition_error"

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    const-string v6, "SoundTriggerHelper"

    if-eqz v0, :cond_8d

    if-eq v1, v4, :cond_8d

    if-nez v2, :cond_1c

    goto/16 :goto_8d

    .line 1133
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v7

    if-nez v7, :cond_32

    .line 1135
    const-string/jumbo p1, "startRecognition requested but not allowed."

    invoke-static {v6, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "sth_start_recognition_not_allowed"

    invoke-static {p1, p2, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1137
    const/4 p1, 0x0

    return p1

    .line 1140
    :cond_32
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v7, :cond_37

    .line 1141
    return v4

    .line 1143
    :cond_37
    invoke-virtual {v7, v1, v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v1

    .line 1144
    if-eqz v1, :cond_69

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRecognition failed with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1148
    if-eqz p2, :cond_8c

    .line 1150
    :try_start_59
    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_5c
    .catch Landroid/os/DeadObjectException; {:try_start_59 .. :try_end_5c} :catch_64
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 1155
    :goto_5c
    goto :goto_8c

    .line 1153
    :catch_5d
    move-exception p1

    .line 1154
    const-string p2, "RemoteException in onError"

    invoke-static {v6, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 1151
    :catch_64
    move-exception p2

    .line 1152
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    goto :goto_5c

    .line 1158
    :cond_69
    const-string/jumbo v2, "startRecognition successful."

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sth_start_recognition_success"

    invoke-static {v2, v3, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1160
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStarted()V

    .line 1162
    if-eqz p2, :cond_8c

    .line 1164
    :try_start_7c
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionResumed()V
    :try_end_7f
    .catch Landroid/os/DeadObjectException; {:try_start_7c .. :try_end_7f} :catch_87
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 1169
    :goto_7f
    goto :goto_8c

    .line 1167
    :catch_80
    move-exception p1

    .line 1168
    const-string p2, "RemoteException in onRecognitionResumed"

    invoke-static {v6, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8c

    .line 1165
    :catch_87
    move-exception p2

    .line 1166
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    goto :goto_7f

    .line 1175
    :cond_8c
    :goto_8c
    return v1

    .line 1128
    :cond_8d
    :goto_8d
    const-string/jumbo p1, "startRecognition: Bad data passed in."

    invoke-static {v6, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1130
    return v4
.end method

.method private stopAndUnloadDeadModelsLocked()V
    .registers 5

    .line 1037
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1038
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1039
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1040
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1041
    goto :goto_a

    .line 1043
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 1044
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 1045
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_64

    .line 1047
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " that has no clients"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoundTriggerHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 1050
    :cond_64
    goto :goto_a

    .line 1051
    :cond_65
    return-void
.end method

.method private stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 7

    .line 417
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    const/high16 v1, -0x80000000

    if-nez p2, :cond_9

    .line 419
    :try_start_7
    monitor-exit v0

    return v1

    .line 421
    :cond_9
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_12

    goto :goto_66

    .line 426
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    .line 427
    if-eqz v2, :cond_5d

    .line 428
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_5d

    .line 434
    :cond_25
    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    if-eq v2, p2, :cond_38

    .line 437
    const-string p1, "SoundTriggerHelper"

    const-string p2, "Attempting stopRecognition for another recognition"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    monitor-exit v0

    return v1

    .line 442
    :cond_38
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 443
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v1

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result p2

    .line 445
    if-eqz p2, :cond_48

    .line 446
    monitor-exit v0

    return p2

    .line 451
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setLoaded()V

    .line 452
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    .line 453
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 455
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->computeRecognitionRequestedLocked()Z

    move-result p1

    if-nez p1, :cond_5b

    .line 456
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 459
    :cond_5b
    monitor-exit v0

    return p2

    .line 430
    :cond_5d
    :goto_5d
    const-string p1, "SoundTriggerHelper"

    const-string p2, "Attempting stopRecognition without a successful startRecognition"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    monitor-exit v0

    return v1

    .line 422
    :cond_66
    :goto_66
    const-string p1, "SoundTriggerHelper"

    const-string p2, "Attempting stopRecognition without the capability"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    monitor-exit v0

    return v1

    .line 460
    :catchall_6f
    move-exception p1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_7 .. :try_end_71} :catchall_6f

    throw p1
.end method

.method private stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .registers 9

    .line 1179
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v0, :cond_7

    .line 1180
    const/high16 p1, -0x80000000

    return p1

    .line 1183
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 1185
    nop

    .line 1187
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v1

    .line 1189
    const/4 v2, 0x1

    const-string v3, "SoundTriggerHelper"

    if-eqz v1, :cond_4a

    .line 1190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRecognition call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sth_stop_recognition_error"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1192
    if-eqz p2, :cond_67

    .line 1194
    :try_start_3a
    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_3d
    .catch Landroid/os/DeadObjectException; {:try_start_3a .. :try_end_3d} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 1199
    :goto_3d
    goto :goto_67

    .line 1197
    :catch_3e
    move-exception p1

    .line 1198
    const-string p2, "RemoteException in onError"

    invoke-static {v3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 1195
    :catch_45
    move-exception p2

    .line 1196
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    goto :goto_3d

    .line 1202
    :cond_4a
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 1203
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sth_stop_recognition_success"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1205
    if-eqz p2, :cond_67

    .line 1207
    :try_start_57
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_5a
    .catch Landroid/os/DeadObjectException; {:try_start_57 .. :try_end_5a} :catch_62
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 1212
    :goto_5a
    goto :goto_67

    .line 1210
    :catch_5b
    move-exception p1

    .line 1211
    const-string p2, "RemoteException in onRecognitionPaused"

    invoke-static {v3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    .line 1208
    :catch_62
    move-exception p2

    .line 1209
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    goto :goto_5a

    .line 1218
    :cond_67
    :goto_67
    return v1
.end method

.method private tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    .registers 7

    .line 468
    nop

    .line 469
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelNotLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 470
    return v1

    .line 472
    :cond_9
    const-string v0, "SoundTriggerHelper"

    if-eqz p2, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 473
    invoke-direct {p0, p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v1

    .line 475
    if-eqz v1, :cond_2f

    .line 476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "stopRecognition failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return v1

    .line 481
    :cond_2f
    if-eqz p3, :cond_6f

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 482
    const-string p2, "Unloading previously loaded stale model."

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez p2, :cond_43

    .line 484
    const/high16 p1, -0x80000000

    return p1

    .line 486
    :cond_43
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v1

    .line 487
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const/4 p3, 0x1

    const-string/jumbo v2, "sth_unloading_stale_model"

    invoke-static {p2, v2, p3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 488
    if-eqz v1, :cond_6c

    .line 489
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unloadSoundModel call failed with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 492
    :cond_6c
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    .line 495
    :cond_6f
    :goto_6f
    return v1
.end method

.method private updateAllRecognitionsLocked(Z)V
    .registers 5

    .line 835
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v0

    .line 837
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 838
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 839
    invoke-direct {p0, v2, v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    .line 840
    goto :goto_13

    .line 841
    :cond_23
    return-void
.end method

.method private updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    .registers 6

    .line 845
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    const/4 p2, 0x1

    goto :goto_c

    :cond_b
    move p2, v1

    .line 846
    :goto_c
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v0

    if-ne p2, v0, :cond_13

    .line 848
    return v1

    .line 850
    :cond_13
    if-eqz p2, :cond_1a

    .line 851
    invoke-direct {p0, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result p1

    return p1

    .line 853
    :cond_1a
    invoke-direct {p0, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result p1

    return p1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 922
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 923
    :try_start_3
    const-string p3, "  module properties="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 924
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez p3, :cond_10

    const-string/jumbo p3, "null"

    goto :goto_12

    :cond_10
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    :goto_12
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 926
    const-string p3, "  call active="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 927
    const-string p3, "  power save mode active="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 928
    const-string p3, "  service disabled="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 929
    monitor-exit p1

    .line 930
    return-void

    .line 929
    :catchall_35
    move-exception p2

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p2
.end method

.method getGenericModelState(Ljava/util/UUID;)I
    .registers 7

    .line 579
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_get_generic_model_state"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 581
    const/high16 v1, -0x80000000

    if-eqz p1, :cond_86

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_15

    goto :goto_86

    .line 584
    :cond_15
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 585
    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_6e

    .line 590
    :cond_26
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v3

    if-nez v3, :cond_44

    .line 591
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetGenericModelState: Given generic model is not loaded:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    monitor-exit v0

    return v1

    .line 594
    :cond_44
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-nez v3, :cond_62

    .line 595
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetGenericModelState: Given generic model is not started:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    monitor-exit v0

    return v1

    .line 599
    :cond_62
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->getModelState(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 586
    :cond_6e
    :goto_6e
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetGenericModelState error: Invalid generic model id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    monitor-exit v0

    return v1

    .line 582
    :cond_86
    :goto_86
    monitor-exit v0

    return v1

    .line 600
    :catchall_88
    move-exception p1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw p1
.end method

.method getKeyphraseModelState(Ljava/util/UUID;)I
    .registers 3

    .line 604
    const-string p1, "SoundTriggerHelper"

    const-string v0, "GetKeyphraseModelState error: Not implemented"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    return-object v0
.end method

.method isRecognitionRequested(Ljava/util/UUID;)Z
    .registers 4

    .line 572
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 574
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit v0

    return p1

    .line 575
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .registers 5

    .line 611
    if-nez p1, :cond_a

    .line 612
    const-string p1, "SoundTriggerHelper"

    const-string v0, "Null recognition event!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void

    .line 616
    :cond_a
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-nez v0, :cond_1a

    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    if-nez v0, :cond_1a

    .line 618
    const-string p1, "SoundTriggerHelper"

    const-string v0, "Invalid recognition event type (not one of generic or keyphrase)!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void

    .line 623
    :cond_1a
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_1d
    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    if-eqz v1, :cond_33

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_33

    goto :goto_44

    .line 630
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionFailureLocked()V

    .line 631
    goto :goto_44

    .line 626
    :cond_2f
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V

    .line 627
    goto :goto_44

    .line 634
    :cond_33
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 635
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onKeyphraseRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    goto :goto_44

    .line 637
    :cond_3f
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onGenericRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    .line 641
    :goto_44
    monitor-exit v0

    .line 642
    return-void

    .line 641
    :catchall_46
    move-exception p1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_46

    throw p1
.end method

.method public onServiceDied()V
    .registers 4

    .line 717
    const-string v0, "SoundTriggerHelper"

    const-string/jumbo v1, "onServiceDied!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_service_died"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 719
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_14
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onServiceDiedLocked()V

    .line 721
    monitor-exit v0

    .line 722
    return-void

    .line 721
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public onServiceStateChange(I)V
    .registers 4

    .line 710
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    const/4 v1, 0x1

    if-ne v1, p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onServiceStateChangedLocked(Z)V

    .line 712
    monitor-exit v0

    .line 713
    return-void

    .line 712
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .registers 6

    .line 696
    if-nez p1, :cond_a

    .line 697
    const-string p1, "SoundTriggerHelper"

    const-string v0, "Invalid sound model event!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void

    .line 701
    :cond_a
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_d
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_sound_model_updated"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 703
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V

    .line 704
    monitor-exit v0

    .line 705
    return-void

    .line 704
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 13

    .line 144
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_start_recognition"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 145
    const/high16 v0, -0x80000000

    if-eqz p1, :cond_35

    if-eqz p2, :cond_35

    if-eqz p3, :cond_35

    if-nez p4, :cond_14

    goto :goto_35

    .line 151
    :cond_14
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v4

    .line 153
    if-nez v4, :cond_26

    .line 154
    const-string p1, "SoundTriggerHelper"

    const-string p2, "Irrecoverable error occurred, check UUID / sound model data."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    monitor-exit v1

    return v0

    .line 157
    :cond_26
    const/high16 v7, -0x80000000

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I

    move-result p1

    monitor-exit v1

    return p1

    .line 159
    :catchall_32
    move-exception p1

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_32

    throw p1

    .line 147
    :cond_35
    :goto_35
    const-string p1, "SoundTriggerHelper"

    const-string p2, "Passed in bad data to startGenericRecognition()."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v0
.end method

.method startKeyphraseRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 12

    .line 173
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_start_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 175
    const/high16 v1, -0x80000000

    if-eqz p2, :cond_5a

    if-eqz p3, :cond_5a

    if-nez p4, :cond_15

    goto :goto_5a

    .line 187
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 189
    const-string p1, "SoundTriggerHelper"

    const-string p2, "Generic model with same UUID exists."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    monitor-exit v0

    return v1

    .line 194
    :cond_2a
    if-eqz v2, :cond_44

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v1

    iget-object v3, p2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 196
    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->cleanUpExistingKeyphraseModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I

    move-result v1

    .line 197
    if-eqz v1, :cond_40

    .line 198
    monitor-exit v0

    return v1

    .line 200
    :cond_40
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V

    .line 201
    const/4 v2, 0x0

    .line 206
    :cond_44
    if-nez v2, :cond_4e

    .line 207
    iget-object v1, p2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-direct {p0, v1, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    move-object v3, v2

    goto :goto_4f

    .line 206
    :cond_4e
    move-object v3, v2

    .line 210
    :goto_4f
    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 176
    :cond_5a
    :goto_5a
    monitor-exit v0

    return v1

    .line 212
    :catchall_5c
    move-exception p1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I
    .registers 13

    .line 242
    iget-object p5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter p5

    .line 243
    :try_start_3
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_12

    .line 244
    const-string p1, "SoundTriggerHelper"

    const-string p2, "Attempting startRecognition without the capability"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    monitor-exit p5

    return v1

    .line 247
    :cond_12
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v0, :cond_2f

    .line 248
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iget v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 249
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v0, :cond_2f

    .line 250
    const-string p1, "SoundTriggerHelper"

    const-string/jumbo p2, "startRecognition cannot attach to sound trigger module"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    monitor-exit p5

    return v1

    .line 262
    :cond_2f
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_88

    .line 263
    nop

    .line 264
    nop

    .line 265
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 268
    nop

    .line 269
    move v0, v2

    move v4, v3

    goto :goto_62

    .line 270
    :cond_4d
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 273
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v0

    .line 274
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v4

    goto :goto_62

    .line 270
    :cond_60
    move v0, v3

    move v4, v0

    .line 276
    :goto_62
    if-nez v0, :cond_66

    if-eqz v4, :cond_88

    .line 277
    :cond_66
    invoke-direct {p0, p2, v0, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v0

    .line 278
    if-eqz v0, :cond_88

    .line 279
    const-string p1, "SoundTriggerHelper"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to stop or unload previous model: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 279
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    monitor-exit p5

    return v0

    .line 286
    :cond_88
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_c1

    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_c1

    .line 288
    const-string v4, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Canceling previous recognition for model id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_3 .. :try_end_b2} :catchall_132

    .line 291
    :try_start_b2
    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_b5} :catch_b6
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_132

    .line 294
    goto :goto_be

    .line 292
    :catch_b6
    move-exception v0

    .line 293
    :try_start_b7
    const-string v4, "SoundTriggerHelper"

    const-string v5, "RemoteException in onDetectionStopped"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    :goto_be
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    .line 299
    :cond_c1
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_11b

    .line 304
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopAndUnloadDeadModelsLocked()V

    .line 305
    new-array v0, v2, [I

    aput v1, v0, v3

    .line 306
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v4, p1, v0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    move-result v4

    .line 307
    if-eqz v4, :cond_ee

    .line 308
    const-string p1, "SoundTriggerHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "loadSoundModel call failed with "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit p5

    return v4

    .line 311
    :cond_ee
    aget v4, v0, v3

    if-ne v4, v1, :cond_fb

    .line 312
    const-string p1, "SoundTriggerHelper"

    const-string p2, "loadSoundModel call returned invalid sound model handle"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    monitor-exit p5

    return v1

    .line 315
    :cond_fb
    aget v1, v0, v3

    invoke-virtual {p2, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setHandle(I)V

    .line 316
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setLoaded()V

    .line 317
    const-string v1, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sound model loaded with handle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_11b
    invoke-virtual {p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setCallback(Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)V

    .line 320
    invoke-virtual {p2, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 321
    invoke-virtual {p2, p4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 322
    invoke-virtual {p2, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)V

    .line 324
    invoke-direct {p0, p2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result p1

    .line 328
    if-nez p1, :cond_130

    .line 329
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->initializeTelephonyAndPowerStateListeners()V

    .line 332
    :cond_130
    monitor-exit p5

    return p1

    .line 333
    :catchall_132
    move-exception p1

    monitor-exit p5
    :try_end_134
    .catchall {:try_start_b7 .. :try_end_134} :catchall_132

    throw p1
.end method

.method stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 7

    .line 347
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_stop_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 349
    const/high16 v1, -0x80000000

    if-eqz p2, :cond_5b

    if-nez p1, :cond_13

    goto :goto_5b

    .line 355
    :cond_13
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 356
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_43

    .line 361
    :cond_24
    invoke-direct {p0, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p1

    .line 362
    if-eqz p1, :cond_41

    .line 363
    const-string p2, "SoundTriggerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopGenericRecognition failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_41
    monitor-exit v0

    return p1

    .line 357
    :cond_43
    :goto_43
    const-string p2, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting stopRecognition on invalid model with id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    monitor-exit v0

    return v1

    .line 350
    :cond_5b
    :goto_5b
    const-string p2, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null callbackreceived for stopGenericRecognition() for modelid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    monitor-exit v0

    return v1

    .line 366
    :catchall_73
    move-exception p1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_73

    throw p1
.end method

.method stopKeyphraseRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 7

    .line 380
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_stop_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 382
    const/high16 v1, -0x80000000

    if-nez p2, :cond_28

    .line 383
    const-string p2, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null callback received for stopKeyphraseRecognition() for keyphraseId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    monitor-exit v0

    return v1

    .line 388
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    .line 389
    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_3f

    .line 400
    :cond_35
    invoke-direct {p0, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p1

    .line 401
    if-eqz p1, :cond_3d

    .line 402
    monitor-exit v0

    return p1

    .line 405
    :cond_3d
    monitor-exit v0

    return p1

    .line 390
    :cond_3f
    :goto_3f
    const-string p2, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No model exists for given keyphrase Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    monitor-exit v0

    return v1

    .line 406
    :catchall_57
    move-exception p1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p1
.end method

.method unloadGenericSoundModel(Ljava/util/UUID;)I
    .registers 9

    .line 531
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_unload_generic_sound_model"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 533
    const/high16 v1, -0x80000000

    if-eqz p1, :cond_b9

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_16

    goto/16 :goto_b9

    .line 536
    :cond_16
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 537
    if-eqz v2, :cond_a1

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_a1

    .line 542
    :cond_27
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_46

    .line 544
    const-string v1, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unload: Given generic model is not loaded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    monitor-exit v0

    return v4

    .line 547
    :cond_46
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 548
    invoke-direct {p0, v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v3

    .line 550
    if-eqz v3, :cond_69

    .line 551
    const-string v4, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopGenericRecognition failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_69
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v3, :cond_6f

    .line 556
    monitor-exit v0

    return v1

    .line 558
    :cond_6f
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v1

    .line 559
    if-eqz v1, :cond_9a

    .line 560
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unloadGenericSoundModel() call failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v2, "SoundTriggerHelper"

    const-string/jumbo v3, "unloadGenericSoundModel() force-marking model as unloaded."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_9a
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    monitor-exit v0

    return v1

    .line 538
    :cond_a1
    :goto_a1
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unload error: Attempting unload invalid generic model with id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    monitor-exit v0

    return v1

    .line 534
    :cond_b9
    :goto_b9
    monitor-exit v0

    return v1

    .line 568
    :catchall_bb
    move-exception p1

    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_3 .. :try_end_bd} :catchall_bb

    throw p1
.end method

.method unloadKeyphraseSoundModel(I)I
    .registers 8

    .line 503
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_unload_keyphrase_sound_model"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 505
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v1

    .line 506
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_71

    if-eqz v1, :cond_71

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    if-eq v2, v3, :cond_71

    .line 507
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_71

    .line 512
    :cond_25
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 513
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v3

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v2

    .line 515
    if-eqz v2, :cond_49

    .line 516
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop recognition failed for keyphrase ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_49
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v1

    .line 520
    if-eqz v1, :cond_6c

    .line 521
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unloadKeyphraseSoundModel call failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_6c
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V

    .line 526
    monitor-exit v0

    return v1

    .line 508
    :cond_71
    :goto_71
    monitor-exit v0

    return v3

    .line 527
    :catchall_73
    move-exception p1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_73

    throw p1
.end method
