.class public Lcom/android/settings/development/BluetoothA2dpConfigStore;
.super Ljava/lang/Object;
.source "BluetoothA2dpConfigStore.java"


# instance fields
.field private mBitsPerSample:I

.field private mChannelMode:I

.field private mCodecPriority:I

.field private mCodecSpecific1Value:J

.field private mCodecSpecific2Value:J

.field private mCodecSpecific3Value:J

.field private mCodecSpecific4Value:J

.field private mCodecType:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xf4240

    .line 27
    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecType:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    .line 29
    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    .line 30
    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    .line 31
    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    return-void
.end method


# virtual methods
.method public createCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;
    .registers 16

    .line 111
    new-instance v14, Landroid/bluetooth/BluetoothCodecConfig;

    iget v1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecType:I

    iget v2, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    iget v3, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    iget v4, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    iget v5, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    iget-wide v6, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific1Value:J

    iget-wide v8, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific2Value:J

    iget-wide v10, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific3Value:J

    iget-wide v12, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific4Value:J

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    return-object v14
.end method

.method public getBitsPerSample()I
    .registers 1

    .line 86
    iget p0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    return p0
.end method

.method public getChannelMode()I
    .registers 1

    .line 90
    iget p0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    return p0
.end method

.method public getCodecType()I
    .registers 1

    .line 74
    iget p0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecType:I

    return p0
.end method

.method public getSampleRate()I
    .registers 1

    .line 82
    iget p0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    return p0
.end method

.method public setBitsPerSample(I)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    return-void
.end method

.method public setChannelMode(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    return-void
.end method

.method public setCodecPriority(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    return-void
.end method

.method public setCodecSpecific1Value(J)V
    .registers 3

    .line 58
    iput-wide p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific1Value:J

    return-void
.end method

.method public setCodecType(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecType:I

    return-void
.end method

.method public setSampleRate(I)V
    .registers 2

    .line 46
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    return-void
.end method
