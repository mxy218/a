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

    .line 12051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12052
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    .line 12053
    return-void
.end method


# virtual methods
.method public build([Ljava/lang/String;I)I
    .registers 5
    .param p1, "args"  # [Ljava/lang/String;
    .param p2, "opti"  # I

    .line 12085
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_16

    .line 12086
    aget-object v0, p1, p2

    .line 12087
    .local v0, "name":Ljava/lang/String;
    const-string v1, "--"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 12088
    add-int/lit8 v1, p2, 0x1

    return v1

    .line 12090
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 12085
    .end local v0  # "name":Ljava/lang/String;
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12092
    :cond_16
    return p2
.end method

.method public build(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;

    .line 12056
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 12057
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 12058
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    if-nez v2, :cond_12

    .line 12059
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    .line 12061
    :cond_12
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12062
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    goto :goto_4c

    .line 12064
    :cond_1a
    const/4 v2, 0x0

    .line 12067
    .local v2, "objectId":I
    const/16 v3, 0x10

    :try_start_1d
    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    move v2, v3

    .line 12068
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    if-nez v3, :cond_2d

    .line 12069
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    .line 12071
    :cond_2d
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12072
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_38} :catch_39

    .line 12080
    goto :goto_4c

    .line 12073
    :catch_39
    move-exception v3

    .line 12075
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    if-nez v4, :cond_45

    .line 12076
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    .line 12078
    :cond_45
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12079
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    .line 12082
    .end local v2  # "objectId":I
    .end local v3  # "e":Ljava/lang/RuntimeException;
    :goto_4c
    return-void
.end method

.method public match(Ljava/lang/Object;Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "comp"  # Landroid/content/ComponentName;

    .line 12096
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 12097
    return v1

    .line 12099
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    .line 12100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 12101
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 12102
    return v1

    .line 12100
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 12106
    .end local v0  # "i":I
    :cond_25
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    if-eqz v0, :cond_48

    .line 12107
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_2a
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_48

    .line 12108
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_45

    .line 12109
    return v1

    .line 12107
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 12113
    .end local v0  # "i":I
    :cond_48
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    if-eqz v0, :cond_6b

    .line 12114
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 12115
    .local v0, "flat":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_51
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6b

    .line 12116
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 12117
    return v1

    .line 12115
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 12121
    .end local v0  # "flat":Ljava/lang/String;
    .end local v2  # "i":I
    :cond_6b
    const/4 v0, 0x0

    return v0
.end method
