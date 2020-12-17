.class abstract Lcom/android/server/display/DisplayDevice;
.super Ljava/lang/Object;
.source "DisplayDevice.java"


# instance fields
.field private mCurrentDisplayRect:Landroid/graphics/Rect;

.field private mCurrentLayerStack:I

.field private mCurrentLayerStackRect:Landroid/graphics/Rect;

.field private mCurrentOrientation:I

.field private mCurrentSurface:Landroid/view/Surface;

.field mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

.field private final mDisplayToken:Landroid/os/IBinder;

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "displayAdapter"  # Lcom/android/server/display/DisplayAdapter;
    .param p2, "displayToken"  # Landroid/os/IBinder;
    .param p3, "uniqueId"  # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    .line 43
    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 56
    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    .line 57
    iput-object p2, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 58
    iput-object p3, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .registers 1

    .line 120
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentLayerStackRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDisplayRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public final getAdapterLocked()Lcom/android/server/display/DisplayAdapter;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    return-object v0
.end method

.method public abstract getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
.end method

.method public final getDisplayTokenLocked()Landroid/os/IBinder;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getNameLocked()Ljava/lang/String;
    .registers 2

    .line 86
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract hasStableUniqueId()Z
.end method

.method public onOverlayChangedLocked()V
    .registers 1

    .line 157
    return-void
.end method

.method public performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 126
    return-void
.end method

.method public final populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V
    .registers 5
    .param p1, "viewport"  # Landroid/hardware/display/DisplayViewport;

    .line 218
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    iput v0, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 220
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_10

    .line 221
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_15

    .line 223
    :cond_10
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 226
    :goto_15
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_21

    .line 227
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_26

    .line 229
    :cond_21
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 232
    :goto_26
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_30

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :cond_30
    :goto_30
    move v0, v1

    .line 234
    .local v0, "isRotated":Z
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 235
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    if-eqz v0, :cond_3a

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_3c

    :cond_3a
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_3c
    iput v2, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    .line 236
    if-eqz v0, :cond_43

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_45

    :cond_43
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    :goto_45
    iput v2, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    .line 238
    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v2, p1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 240
    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    instance-of v2, v2, Landroid/view/DisplayAddress$Physical;

    if-eqz v2, :cond_60

    .line 241
    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    check-cast v2, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v2}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iput-object v2, p1, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Byte;

    goto :goto_63

    .line 243
    :cond_60
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Byte;

    .line 245
    :goto_63
    return-void
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .registers 4
    .param p1, "state"  # I
    .param p2, "brightness"  # I

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAllowedDisplayModesLocked([I)V
    .registers 2
    .param p1, "modes"  # [I

    .line 148
    return-void
.end method

.method public final setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layerStack"  # I

    .line 163
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    if-eq v0, p2, :cond_b

    .line 164
    iput p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    .line 165
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    .line 167
    :cond_b
    return-void
.end method

.method public final setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "orientation"  # I
    .param p3, "layerStackRect"  # Landroid/graphics/Rect;
    .param p4, "displayRect"  # Landroid/graphics/Rect;

    .line 181
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    if-ne v0, p2, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_18

    .line 183
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_18

    .line 185
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 186
    :cond_18
    iput p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 188
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-nez v0, :cond_25

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    .line 191
    :cond_25
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-nez v0, :cond_35

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 196
    :cond_35
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 201
    :cond_3f
    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 2
    .param p1, "colorMode"  # I

    .line 154
    return-void
.end method

.method public final setSurfaceLocked(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"  # Landroid/view/Surface;

    .line 207
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    if-eq v0, p2, :cond_b

    .line 208
    iput-object p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    .line 209
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    .line 211
    :cond_b
    return-void
.end method
