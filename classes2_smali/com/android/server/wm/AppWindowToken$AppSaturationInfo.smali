.class Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;
.super Ljava/lang/Object;
.source "AppWindowToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWindowToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppSaturationInfo"
.end annotation


# instance fields
.field mMatrix:[F

.field mTranslation:[F


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 3386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3387
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;->mMatrix:[F

    .line 3388
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;->mTranslation:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/AppWindowToken$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/wm/AppWindowToken$1;

    .line 3386
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;-><init>()V

    return-void
.end method


# virtual methods
.method setSaturation([F[F)V
    .registers 6
    .param p1, "matrix"  # [F
    .param p2, "translation"  # [F

    .line 3391
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;->mMatrix:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3392
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;->mTranslation:[F

    array-length v1, v0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3393
    return-void
.end method
