.class public Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;
.super Ljava/lang/Object;
.source "MzDisplayAngularArcSurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MZ_DISPLAY_ANGULARARC_LAYER_UP_BOTTOM:Z = true

.field private static final TAG:Ljava/lang/String; = "MzDisplayAngularArc"

.field private static mAngualrArcSurfaceControlBottom:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

.field private static mAngualrArcSurfaceControlUp:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

.field private static mContext:Landroid/content/Context;

.field private static mMzDisplaySurface:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;


# instance fields
.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 19
    .param p1, "context"  # Landroid/content/Context;

    .line 51
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sput-object p1, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mContext:Landroid/content/Context;

    .line 54
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, v10, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 55
    iget-object v0, v10, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v11

    .line 57
    .local v11, "displayInfo":Landroid/view/DisplayInfo;
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlBottom:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    const-string v12, ",Width:"

    const-string v13, "MzDisplayAngularArc"

    const/4 v14, 0x1

    if-nez v0, :cond_97

    .line 58
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {v0, v14}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->build(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa080006

    .line 58
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 61
    .local v15, "bitMapBottom":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bottom : naturalHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", naturalWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v11}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v16, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    const/4 v3, 0x0

    .line 67
    invoke-virtual {v11}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v4, v0, v1

    .line 68
    invoke-virtual {v11}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v5

    .line 69
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v8, v11, Landroid/view/DisplayInfo;->layerStack:I

    const v9, 0x4000000b  # 2.0000026f

    const-string v2, "DisplayAngularArcView_Bottom"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v7, v15

    invoke-direct/range {v0 .. v9}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;-><init>(Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;Ljava/lang/String;IIIILandroid/graphics/Bitmap;II)V

    sput-object v16, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlBottom:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    .line 73
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlBottom:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->prepare()Z

    .line 76
    .end local v15  # "bitMapBottom":Landroid/graphics/Bitmap;
    :cond_97
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlUp:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    if-nez v0, :cond_107

    .line 77
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {v0, v14}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->build(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa080007

    .line 77
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 80
    .local v14, "bitMapUpper":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Up : naturalHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",naturalWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v11}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v12, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 87
    invoke-virtual {v11}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v5

    .line 88
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v8, v11, Landroid/view/DisplayInfo;->layerStack:I

    const v9, 0x4000000c  # 2.0000029f

    const-string v2, "DisplayAngularArcView_Upper"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v7, v14

    invoke-direct/range {v0 .. v9}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;-><init>(Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;Ljava/lang/String;IIIILandroid/graphics/Bitmap;II)V

    sput-object v12, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlUp:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    .line 92
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlUp:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->prepare()Z

    .line 94
    .end local v14  # "bitMapUpper":Landroid/graphics/Bitmap;
    :cond_107
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;)Landroid/hardware/display/DisplayManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    .line 34
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method

.method private static build(Landroid/content/Context;Z)Landroid/content/Context;
    .registers 5
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "keepDpi"  # Z

    .line 97
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 98
    .local v0, "configuration":Landroid/content/res/Configuration;
    if-eqz p1, :cond_21

    .line 99
    const/16 v1, 0x1e0

    const-string/jumbo v2, "ro.sf.lcd_density"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 100
    .local v1, "mDefaultDensity":I
    const-string/jumbo v2, "persist.sys.density"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 102
    .end local v1  # "mDefaultDensity":I
    :cond_21
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    .line 103
    .local v1, "result":Landroid/content/Context;
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;
    .registers 2
    .param p0, "context"  # Landroid/content/Context;

    .line 107
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mMzDisplaySurface:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    if-nez v0, :cond_b

    .line 108
    new-instance v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    invoke-direct {v0, p0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mMzDisplaySurface:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    .line 111
    :cond_b
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mMzDisplaySurface:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    return-object v0
.end method

.method public static setSkipInScreenshotAndScreenrecord(Z)V
    .registers 2
    .param p0, "skip"  # Z

    .line 308
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlUp:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    if-eqz v0, :cond_7

    .line 309
    invoke-virtual {v0, p0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 312
    :cond_7
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlBottom:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    if-eqz v0, :cond_e

    .line 313
    invoke-virtual {v0, p0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 317
    :cond_e
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 126
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlBottom:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    if-eqz v0, :cond_7

    .line 127
    invoke-virtual {v0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->dismiss()V

    .line 129
    :cond_7
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlUp:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    if-eqz v0, :cond_e

    .line 130
    invoke-virtual {v0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->dismiss()V

    .line 132
    :cond_e
    return-void
.end method

.method public hideDisplayAngularArcView()V
    .registers 2

    .line 135
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlBottom:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    if-eqz v0, :cond_7

    .line 136
    invoke-virtual {v0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->hide()V

    .line 138
    :cond_7
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlUp:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    if-eqz v0, :cond_e

    .line 139
    invoke-virtual {v0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->hide()V

    .line 141
    :cond_e
    return-void
.end method

.method public showDisplayAngularArcView()V
    .registers 2

    .line 115
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlBottom:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    if-eqz v0, :cond_7

    .line 116
    invoke-virtual {v0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->show()V

    .line 118
    :cond_7
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->mAngualrArcSurfaceControlUp:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;

    if-eqz v0, :cond_e

    .line 119
    invoke-virtual {v0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->show()V

    .line 121
    :cond_e
    return-void
.end method
