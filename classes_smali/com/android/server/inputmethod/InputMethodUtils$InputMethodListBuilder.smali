.class final Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodListBuilder"
.end annotation


# instance fields
.field private final mInputMethodSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodUtils$1;)V
    .registers 2

    .line 209
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method fillAuxiliaryImes(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 233
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 234
    return-object p0

    .line 236
    :cond_19
    goto :goto_6

    .line 237
    :cond_1a
    nop

    .line 238
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_1e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3a

    .line 239
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 240
    const/4 v4, 0x1

    invoke-static {v3, p2, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->access$100(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 242
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 243
    move v2, v4

    .line 238
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 246
    :cond_3a
    if-eqz v2, :cond_3d

    .line 247
    return-object p0

    .line 249
    :cond_3d
    move v1, v0

    :goto_3e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_58

    .line 250
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 251
    invoke-static {v2, p2, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->access$100(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 253
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 256
    :cond_58
    return-object p0
.end method

.method fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Locale;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 219
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 220
    move-object v2, v1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodUtils;->access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 222
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    :cond_21
    return-object p0
.end method

.method public isEmpty()Z
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    return v0
.end method
