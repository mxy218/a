.class public Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;
.super Ljava/lang/Object;
.source "FlymeDrawableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;
    }
.end annotation


# instance fields
.field private final mDrawableMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mMapMaxSize:I

.field private mMapMaxTime:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 13
    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxSize:I

    const v0, 0xea60

    .line 14
    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxTime:I

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    .line 32
    iput p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxSize:I

    .line 33
    iput p2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxTime:I

    return-void
.end method

.method private clear()V
    .registers 13

    .line 67
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxSize:I

    if-le v0, v1, :cond_6e

    const/4 v0, 0x0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 72
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_22
    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 73
    iget-object v8, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;

    .line 74
    iget-wide v9, v8, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;->mUpdateTime:J

    cmp-long v11, v9, v2

    if-gez v11, :cond_3e

    move-object v0, v7

    move-wide v2, v9

    .line 78
    :cond_3e
    iget-wide v8, v8, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;->mUpdateTime:J

    sub-long v8, v4, v8

    iget v10, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxTime:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_22

    .line 79
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 82
    :cond_4d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_69

    .line 83
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    .line 87
    :cond_69
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    return-void
.end method


# virtual methods
.method public clearAll()V
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 2

    .line 59
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 45
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;

    if-eqz p0, :cond_13

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;->mUpdateTime:J

    .line 48
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUpdateTime(Ljava/lang/String;)J
    .registers 2

    .line 37
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;

    if-eqz p0, :cond_d

    .line 39
    iget-wide p0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;->mUpdateTime:J

    return-wide p0

    :cond_d
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;

    invoke-direct {v1, p2}, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->clear()V

    return-void
.end method
