.class public Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeInputMethodAndSubtypeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlymeInputMethodAndSubtypeEnabler"


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHaveHardKeyboard:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputMethodId:Ljava/lang/String;

.field private mInputMethodProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemLocale:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mSystemLocale:Ljava/lang/String;

    .line 59
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mCollator:Ljava/text/Collator;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;)Ljava/util/List;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 46
    sget-object v0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearImplicitlyEnabledSubtypes(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .registers 21

    move-object/from16 v0, p0

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 228
    iget-object v3, v0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    if-nez v3, :cond_18

    const/4 v3, 0x0

    goto :goto_1c

    :cond_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_1c
    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v3, :cond_134

    .line 231
    iget-object v6, v0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 232
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_32

    :goto_2e
    move/from16 v16, v3

    goto/16 :goto_12e

    .line 234
    :cond_32
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 237
    iget-object v10, v0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_47

    iget-object v10, v0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_47

    goto :goto_2e

    .line 240
    :cond_47
    new-instance v10, Landroid/preference/PreferenceCategory;

    invoke-direct {v10, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v1, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 243
    invoke-virtual {v6, v11}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 245
    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 248
    new-instance v11, Landroid/preference/CheckBoxPreference;

    invoke-direct {v11, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 249
    iget-object v12, v0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v12, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 252
    new-instance v10, Landroid/preference/PreferenceCategory;

    invoke-direct {v10, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v12, 0x7f1200d8

    .line 253
    invoke-virtual {v10, v12}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 254
    invoke-virtual {v1, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v12, 0x0

    .line 258
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-lez v7, :cond_10a

    move-object v15, v12

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_83
    if-ge v12, v7, :cond_ea

    .line 261
    invoke-virtual {v6, v12}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 263
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move/from16 v16, v3

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 262
    invoke-virtual {v4, v2, v8, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 264
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v8

    if-eqz v8, :cond_af

    if-nez v14, :cond_a8

    move-object v15, v3

    move-object/from16 v17, v6

    move/from16 v18, v7

    const/4 v14, 0x1

    goto :goto_e0

    :cond_a8
    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v14

    goto :goto_de

    .line 270
    :cond_af
    new-instance v8, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;

    move-object/from16 v17, v6

    .line 271
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    move/from16 v18, v7

    iget-object v7, v0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mSystemLocale:Ljava/lang/String;

    move/from16 v19, v14

    iget-object v14, v0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mCollator:Ljava/text/Collator;

    invoke-direct {v8, v2, v6, v7, v14}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/text/Collator;)V

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v8, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_de
    move/from16 v14, v19

    :goto_e0
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    const/4 v8, 0x1

    goto :goto_83

    :cond_ea
    move/from16 v16, v3

    move/from16 v19, v14

    .line 277
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v3, 0x0

    .line 278
    :goto_f2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_104

    .line 279
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v10, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f2

    .line 281
    :cond_104
    iget-object v3, v0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10f

    :cond_10a
    move/from16 v16, v3

    move-object v15, v12

    const/16 v19, 0x0

    :goto_10f
    if-eqz v19, :cond_128

    .line 284
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_124

    .line 285
    sget-object v3, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->TAG:Ljava/lang/String;

    const-string v4, "Title for auto subtype is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "---"

    .line 286
    invoke-virtual {v11, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_12e

    .line 288
    :cond_124
    invoke-virtual {v11, v15}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_12e

    :cond_128
    const v3, 0x7f1216f4

    .line 291
    invoke-virtual {v11, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    :goto_12e
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v16

    goto/16 :goto_1d

    :cond_134
    return-object v1
.end method

.method private isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z
    .registers 3

    .line 299
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 300
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/preference/Preference;

    .line 301
    instance-of v0, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_c

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 302
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    goto :goto_27

    :cond_26
    const/4 p0, 0x1

    :goto_27
    return p0
.end method

.method private onCreateIMM()V
    .registers 2

    const-string v0, "input_method"

    .line 216
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 220
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    return-void
.end method

.method private setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 334
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    return-void
.end method

.method private setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V
    .registers 6

    .line 311
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_b

    return-void

    .line 313
    :cond_b
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 314
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 316
    instance-of v2, v1, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1a

    xor-int/lit8 v2, p2, 0x1

    .line 320
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    if-eqz p2, :cond_1a

    .line 322
    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1a

    :cond_38
    if-eqz p2, :cond_48

    .line 327
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-boolean v1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    invoke-static {p0, p2, v0, v1}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/meizu/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 329
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method private updateAutoSelectionCB()V
    .registers 4

    .line 373
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 374
    invoke-direct {p0, v1}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V

    goto :goto_a

    :cond_1e
    const/4 v0, 0x0

    .line 376
    invoke-direct {p0, v0}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    return-void
.end method

.method private updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V
    .registers 12

    .line 343
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 344
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1f

    .line 345
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_6

    .line 346
    :cond_1f
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_6

    .line 349
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_6

    .line 350
    :cond_30
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 351
    iget-object v4, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v5, 0x1

    .line 352
    invoke-virtual {v4, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v3, :cond_6

    if-nez v1, :cond_44

    goto :goto_6

    .line 354
    :cond_44
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_48
    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    .line 355
    instance-of v6, v4, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_48

    .line 356
    check-cast v4, Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    .line 357
    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    if-eqz p2, :cond_48

    .line 359
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_64
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 360
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 361
    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 362
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_48

    :cond_91
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 99
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 101
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 63
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "input_method"

    .line 64
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 65
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 66
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-boolean v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    .line 68
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "input_method_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    if-nez v1, :cond_41

    if-eqz v0, :cond_41

    .line 77
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 79
    iput-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    .line 82
    :cond_41
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_5f

    if-eqz v0, :cond_5f

    .line 84
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 86
    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    .line 90
    :cond_5f
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 91
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mSystemLocale:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mCollator:Ljava/text/Collator;

    .line 93
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->onCreateIMM()V

    .line 94
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 208
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 209
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    .line 210
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    :cond_d
    return-void
.end method

.method public onPause()V
    .registers 4

    .line 119
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, v0}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->clearImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-boolean v2, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    invoke-static {p0, v0, v1, v2}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/meizu/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 12

    .line 130
    instance-of v0, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_f0

    .line 131
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 133
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_11

    .line 138
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V

    .line 139
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0

    .line 143
    :cond_31
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e8

    const/4 v2, 0x0

    .line 146
    iget-object v4, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v3

    :goto_44
    const/4 v6, 0x1

    if-ge v5, v4, :cond_6e

    .line 148
    iget-object v7, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 149
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 151
    invoke-static {v7}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 152
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-static {p0, v0, v1, v6}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/meizu/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 155
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0

    :cond_69
    move-object v2, v7

    goto :goto_6e

    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_6e
    :goto_6e
    if-nez v2, :cond_75

    .line 161
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0

    .line 163
    :cond_75
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    iget-object v4, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_b5

    .line 165
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040014

    .line 166
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    .line 167
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 168
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v7, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$2;

    invoke-direct {v7, p0, v0, v1}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$2;-><init>(Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v4, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$1;

    invoke-direct {v4, p0}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$1;-><init>(Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;)V

    .line 180
    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    goto :goto_c0

    .line 189
    :cond_b5
    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 190
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 193
    :cond_c0
    :goto_c0
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f1209f7

    new-array v5, v6, [Ljava/lang/Object;

    .line 195
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v5, v3

    .line 193
    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_f0

    .line 198
    :cond_e8
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-static {p0, v0, v1, v3}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/meizu/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 200
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->updateAutoSelectionCB()V

    .line 203
    :cond_f0
    :goto_f0
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 4

    .line 107
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 111
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 113
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-object v2, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 112
    invoke-static {p0, v0, v1, v2}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/meizu/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 114
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->updateAutoSelectionCB()V

    return-void
.end method
