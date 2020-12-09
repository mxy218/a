.class Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodAndSubtypeList"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field private final mSystemLocaleStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V
    .registers 3

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mPm:Landroid/content/pm/PackageManager;

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 181
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    :cond_1e
    const-string p1, ""

    :goto_20
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public getSortedInputMethodAndSubtypeList(ZZ)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 190
    :cond_13
    if-eqz p2, :cond_19

    if-eqz p1, :cond_19

    .line 194
    const/4 v3, 0x0

    goto :goto_1b

    .line 196
    :cond_19
    move/from16 v3, p1

    :goto_1b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 198
    const/4 v6, 0x0

    :goto_25
    if-ge v6, v5, :cond_f4

    .line 199
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 200
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    .line 201
    const/4 v10, 0x1

    invoke-virtual {v8, v9, v7, v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 202
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 203
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 204
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 205
    goto :goto_3f

    .line 206
    :cond_57
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 207
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-lez v8, :cond_db

    .line 208
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v14

    .line 212
    const/4 v13, 0x0

    :goto_68
    if-ge v13, v14, :cond_d8

    .line 213
    invoke-virtual {v7, v13}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 214
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 216
    invoke-virtual {v15, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cb

    if-nez v3, :cond_8c

    .line 217
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v9

    if-nez v9, :cond_85

    goto :goto_8c

    :cond_85
    move-object/from16 v19, v1

    move/from16 v20, v13

    move/from16 v17, v14

    goto :goto_d1

    .line 219
    :cond_8c
    :goto_8c
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v9

    if-eqz v9, :cond_95

    const/4 v9, 0x0

    move-object v10, v9

    goto :goto_a6

    .line 220
    :cond_95
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 221
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 220
    invoke-virtual {v8, v9, v10, v11}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v10, v9

    .line 222
    :goto_a6
    new-instance v11, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 223
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v17

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    move-object v8, v11

    move-object/from16 v18, v9

    move-object/from16 v9, v16

    move-object v2, v11

    move-object v11, v7

    move-object/from16 v19, v1

    move-object v1, v12

    move v12, v13

    move/from16 v20, v13

    move-object/from16 v13, v17

    move/from16 v17, v14

    move-object/from16 v14, v18

    invoke-direct/range {v8 .. v14}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v15, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_d1

    .line 216
    :cond_cb
    move-object/from16 v19, v1

    move/from16 v20, v13

    move/from16 v17, v14

    .line 212
    :goto_d1
    add-int/lit8 v13, v20, 0x1

    move/from16 v14, v17

    move-object/from16 v1, v19

    goto :goto_68

    .line 231
    :cond_d8
    move-object/from16 v19, v1

    goto :goto_ee

    .line 232
    :cond_db
    move-object/from16 v19, v1

    new-instance v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    move-object v8, v1

    move-object/from16 v9, v16

    move-object v11, v7

    invoke-direct/range {v8 .. v14}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :goto_ee
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v19

    goto/16 :goto_25

    .line 236
    :cond_f4
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 237
    return-object v4
.end method
