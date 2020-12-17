.class public abstract Landroidx/preference/PreferenceGroup;
.super Landroidx/preference/Preference;
.source "PreferenceGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceGroup$SavedState;,
        Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;,
        Landroidx/preference/PreferenceGroup$PreferencePositionCallback;
    }
.end annotation


# instance fields
.field private mAttachedToHierarchy:Z

.field private final mClearRecycleCacheRunnable:Ljava/lang/Runnable;

.field private mCurrentPreferenceOrder:I

.field private final mHandler:Landroid/os/Handler;

.field final mIdRecycleCache:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialExpandedChildrenCount:I

.field private mOnExpandButtonClickListener:Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;

.field private mOrderingAsAdded:Z

.field private mPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Landroidx/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 68
    iput-boolean v1, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    const v1, 0x7fffffff

    .line 69
    iput v1, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    const/4 v2, 0x0

    .line 70
    iput-object v2, p0, Landroidx/preference/PreferenceGroup;->mOnExpandButtonClickListener:Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;

    .line 72
    new-instance v2, Landroidx/preference/PreferenceGroup$1;

    invoke-direct {v2, p0}, Landroidx/preference/PreferenceGroup$1;-><init>(Landroidx/preference/PreferenceGroup;)V

    iput-object v2, p0, Landroidx/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    .line 86
    sget-object v2, Landroidx/preference/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 89
    sget p2, Landroidx/preference/R$styleable;->PreferenceGroup_orderingFromXml:I

    .line 90
    invoke-static {p1, p2, p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 93
    sget p2, Landroidx/preference/R$styleable;->PreferenceGroup_initialExpandedChildrenCount:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 94
    sget p2, Landroidx/preference/R$styleable;->PreferenceGroup_initialExpandedChildrenCount:I

    invoke-static {p1, p2, p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 98
    :cond_4e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private removePreferenceInt(Landroidx/preference/Preference;)Z
    .registers 7

    .line 297
    monitor-enter p0

    .line 298
    :try_start_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->onPrepareForRemoval()V

    .line 299
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-ne v0, p0, :cond_e

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->assignParent(Landroidx/preference/PreferenceGroup;)V

    .line 302
    :cond_e
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 315
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 317
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v1, p0, Landroidx/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    iget-object v1, p0, Landroidx/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    :cond_37
    iget-boolean v1, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v1, :cond_3e

    .line 322
    invoke-virtual {p1}, Landroidx/preference/Preference;->onDetached()V

    .line 326
    :cond_3e
    monitor-exit p0

    return v0

    :catchall_40
    move-exception p1

    .line 327
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_40

    throw p1
.end method


# virtual methods
.method public addItemFromInflater(Landroidx/preference/Preference;)V
    .registers 2

    .line 170
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public addPreference(Landroidx/preference/Preference;)Z
    .registers 8

    .line 199
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 202
    :cond_a
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    move-object v0, p0

    .line 204
    :goto_11
    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 205
    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    goto :goto_11

    .line 207
    :cond_1c
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found duplicated key: \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\". This can cause unintended behaviour, please use unique keys for every preference."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreferenceGroup"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_41
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_63

    .line 216
    iget-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v0, :cond_57

    .line 217
    iget v0, p0, Landroidx/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroidx/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 220
    :cond_57
    instance-of v0, p1, Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_63

    .line 223
    move-object v0, p1

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iget-boolean v2, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 227
    :cond_63
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_6e

    mul-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    .line 232
    :cond_6e
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->onPrepareAddPreference(Landroidx/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_76

    const/4 p0, 0x0

    return p0

    .line 236
    :cond_76
    monitor-enter p0

    .line 237
    :try_start_77
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 238
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_b6

    .line 240
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    .line 241
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a1

    .line 243
    iget-object v3, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 244
    iget-object v3, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 245
    iget-object v5, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v5, v2}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a5

    .line 247
    :cond_a1
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getNextId()J

    move-result-wide v3

    .line 249
    :goto_a5
    invoke-virtual {p1, v0, v3, v4}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;J)V

    .line 250
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->assignParent(Landroidx/preference/PreferenceGroup;)V

    .line 252
    iget-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v0, :cond_b2

    .line 253
    invoke-virtual {p1}, Landroidx/preference/Preference;->onAttached()V

    .line 256
    :cond_b2
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    return v1

    :catchall_b6
    move-exception p1

    .line 238
    :try_start_b7
    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 502
    invoke-super {p0, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 505
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 507
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 491
    invoke-super {p0, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 494
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 496
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .registers 6
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_35

    .line 370
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    .line 373
    :cond_d
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_33

    .line 375
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 376
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    return-object v2

    .line 382
    :cond_23
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_30

    .line 383
    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_30

    return-object v2

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_33
    const/4 p0, 0x0

    return-object p0

    .line 368
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInitialExpandedChildrenCount()I
    .registers 1

    .line 163
    iget p0, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    return p0
.end method

.method public getOnExpandButtonClickListener()Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 439
    iget-object p0, p0, Landroidx/preference/PreferenceGroup;->mOnExpandButtonClickListener:Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;

    return-object p0
.end method

.method public getPreference(I)Landroidx/preference/Preference;
    .registers 2

    .line 189
    iget-object p0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    return-object p0
.end method

.method public getPreferenceCount()I
    .registers 1

    .line 179
    iget-object p0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public isAttached()Z
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 410
    iget-boolean p0, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    return p0
.end method

.method protected isOnSameScreenAsChildren()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public notifyDependencyChange(Z)V
    .registers 5

    .line 473
    invoke-super {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 477
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 479
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroidx/preference/Preference;->onParentChanged(Landroidx/preference/Preference;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onAttached()V
    .registers 4

    .line 444
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 451
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_17

    .line 453
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->onAttached()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method

.method public onDetached()V
    .registers 4

    .line 459
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    const/4 v0, 0x0

    .line 462
    iput-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 465
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    :goto_a
    if-ge v0, v1, :cond_16

    .line 467
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->onDetached()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_16
    return-void
.end method

.method protected onPrepareAddPreference(Landroidx/preference/Preference;)Z
    .registers 3

    .line 350
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->onParentChanged(Landroidx/preference/Preference;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    if-eqz p1, :cond_1d

    .line 519
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/PreferenceGroup$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1d

    .line 524
    :cond_f
    check-cast p1, Landroidx/preference/PreferenceGroup$SavedState;

    .line 525
    iget v0, p1, Landroidx/preference/PreferenceGroup$SavedState;->mInitialExpandedChildrenCount:I

    iput v0, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    .line 526
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 521
    :cond_1d
    :goto_1d
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 513
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 514
    new-instance v1, Landroidx/preference/PreferenceGroup$SavedState;

    iget p0, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    invoke-direct {v1, v0, p0}, Landroidx/preference/PreferenceGroup$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public removeAll()V
    .registers 4

    .line 334
    monitor-enter p0

    .line 335
    :try_start_1
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    .line 336
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_18

    const/4 v2, 0x0

    .line 337
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    invoke-direct {p0, v2}, Landroidx/preference/PreferenceGroup;->removePreferenceInt(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 339
    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1d

    .line 340
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    return-void

    :catchall_1d
    move-exception v0

    .line 339
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public removePreference(Landroidx/preference/Preference;)Z
    .registers 2

    .line 274
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreferenceInt(Landroidx/preference/Preference;)Z

    move-result p1

    .line 275
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    return p1
.end method

.method public setInitialExpandedChildrenCount(I)V
    .registers 4

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_29

    .line 149
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_29

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should have a key defined if it contains an expandable preference"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreferenceGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_29
    iput p1, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    return-void
.end method

.method public setOnExpandButtonClickListener(Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;)V
    .registers 2
    .param p1  # Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 425
    iput-object p1, p0, Landroidx/preference/PreferenceGroup;->mOnExpandButtonClickListener:Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;

    return-void
.end method

.method public setOrderingAsAdded(Z)V
    .registers 2

    .line 121
    iput-boolean p1, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return-void
.end method

.method sortPreferences()V
    .registers 2

    .line 484
    monitor-enter p0

    .line 485
    :try_start_1
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 486
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
