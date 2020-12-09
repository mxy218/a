.class Lcom/android/server/display/color/AppSaturationController$SaturationController;
.super Ljava/lang/Object;
.source "AppSaturationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/AppSaturationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaturationController"
.end annotation


# instance fields
.field private final mControllerRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSaturationLevel:I

.field private mTransformMatrix:[F


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 153
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevel:I

    .line 154
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/color/AppSaturationController$1;)V
    .registers 2

    .line 149
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/lang/ref/WeakReference;)Z
    .registers 2

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->addColorTransformController(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/display/color/AppSaturationController$SaturationController;I)Z
    .registers 2

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->setSaturationLevel(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/io/PrintWriter;)V
    .registers 2

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private addColorTransformController(Ljava/lang/ref/WeakReference;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;",
            ">;)Z"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget p1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevel:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_10

    .line 168
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->updateState()Z

    move-result p1

    return p1

    .line 170
    :cond_10
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->clearExpiredReferences()V

    .line 172
    const/4 p1, 0x0

    return p1
.end method

.method private clearExpiredReferences()V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 199
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 201
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 202
    if-nez v1, :cond_1d

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 205
    :cond_1d
    goto :goto_6

    .line 206
    :cond_1e
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "            mSaturationLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "            mControllerRefs count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private setSaturationLevel(I)Z
    .registers 2

    .line 157
    iput p1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevel:I

    .line 158
    iget-object p1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 159
    invoke-direct {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->updateState()Z

    move-result p1

    return p1

    .line 161
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private updateState()Z
    .registers 5

    .line 176
    iget v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevel:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    invoke-static {v0, v1}, Lcom/android/server/display/color/AppSaturationController;->computeGrayscaleTransformMatrix(F[F)V

    .line 178
    nop

    .line 179
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 181
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 183
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 184
    if-eqz v2, :cond_30

    .line 185
    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    sget-object v3, Lcom/android/server/display/color/AppSaturationController;->TRANSLATION_VECTOR:[F

    invoke-interface {v2, v1, v3}, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;->applyAppSaturation([F[F)V

    .line 186
    const/4 v1, 0x1

    goto :goto_33

    .line 189
    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 191
    :goto_33
    goto :goto_13

    .line 192
    :cond_34
    return v1
.end method
