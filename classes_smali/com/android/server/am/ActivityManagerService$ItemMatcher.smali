.class public Lcom/android/server/am/ActivityManagerService$ItemMatcher;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemMatcher"
.end annotation


# instance fields
.field all:Z

.field components:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    .line 11335
    return-void
.end method


# virtual methods
.method public build([Ljava/lang/String;I)I
    .registers 5

    .line 11367
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_16

    .line 11368
    aget-object v0, p1, p2

    .line 11369
    const-string v1, "--"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 11370
    add-int/lit8 p2, p2, 0x1

    return p2

    .line 11372
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 11367
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 11374
    :cond_16
    return p2
.end method

.method public build(Ljava/lang/String;)V
    .registers 5

    .line 11338
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 11339
    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 11340
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    if-nez p1, :cond_12

    .line 11341
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    .line 11343
    :cond_12
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11344
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    goto :goto_4b

    .line 11346
    :cond_1a
    nop

    .line 11349
    const/16 v0, 0x10

    :try_start_1d
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 11350
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    if-nez v2, :cond_2c

    .line 11351
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    .line 11353
    :cond_2c
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11354
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_37} :catch_38

    .line 11362
    goto :goto_4b

    .line 11355
    :catch_38
    move-exception v0

    .line 11357
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    if-nez v0, :cond_44

    .line 11358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    .line 11360
    :cond_44
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11361
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    .line 11364
    :goto_4b
    return-void
.end method

.method public match(Ljava/lang/Object;Landroid/content/ComponentName;)Z
    .registers 8

    .line 11378
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 11379
    return v1

    .line 11381
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 11382
    move v0, v2

    :goto_c
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 11383
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 11384
    return v1

    .line 11382
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 11388
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    if-eqz v0, :cond_49

    .line 11389
    move v0, v2

    :goto_2b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_49

    .line 11390
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_46

    .line 11391
    return v1

    .line 11389
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 11395
    :cond_49
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    if-eqz p1, :cond_6c

    .line 11396
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 11397
    move p2, v2

    :goto_52
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_6c

    .line 11398
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 11399
    return v1

    .line 11397
    :cond_69
    add-int/lit8 p2, p2, 0x1

    goto :goto_52

    .line 11403
    :cond_6c
    return v2
.end method
