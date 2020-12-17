.class public Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceIcon"
.end annotation


# static fields
.field private static final ICONS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/plugins/qs/QSTile$Icon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 574
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .line 578
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    .line 579
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    return-void
.end method

.method public static declared-synchronized get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .registers 4

    const-class v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    monitor-enter v0

    .line 583
    :try_start_3
    sget-object v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-nez v1, :cond_17

    .line 585
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;-><init>(I)V

    .line 586
    sget-object v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    invoke-virtual {v2, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 588
    :cond_17
    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 603
    instance-of v0, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    iget p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 593
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 598
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 608
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "ResourceIcon[resId=0x%08x]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
