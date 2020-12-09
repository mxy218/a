.class Lcom/android/server/policy/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTRIBUTE_SHIFT:Ljava/lang/String; = "shift"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShiftShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    .line 61
    iput-object p1, p0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/android/server/policy/ShortcutManager;->loadShortcuts()V

    .line 63
    return-void
.end method

.method private loadShortcuts()V
    .registers 16

    .line 105
    const-string v0, "Got exception parsing bookmarks."

    const-string v1, "ShortcutManager"

    iget-object v2, p0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 107
    :try_start_a
    iget-object v3, p0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1170004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 109
    const-string v4, "bookmarks"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 112
    :goto_1c
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 114
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    .line 115
    goto/16 :goto_12a

    .line 118
    :cond_28
    const-string v4, "bookmark"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 119
    goto/16 :goto_12a

    .line 122
    :cond_36
    const-string/jumbo v4, "package"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    const-string v7, "class"

    invoke-interface {v3, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 124
    const-string/jumbo v8, "shortcut"

    invoke-interface {v3, v6, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 125
    const-string v9, "category"

    invoke-interface {v3, v6, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 126
    const-string/jumbo v10, "shift"

    invoke-interface {v3, v6, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_5c} :catch_126
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_5c} :catch_121

    const-string v11, "/"

    if-eqz v10, :cond_7b

    .line 129
    :try_start_60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get shortcut for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    goto :goto_1c

    .line 133
    :cond_7b
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 134
    if-eqz v6, :cond_8d

    const-string/jumbo v13, "true"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_89} :catch_126
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_89} :catch_121

    if-eqz v6, :cond_8d

    move v6, v5

    goto :goto_8e

    :cond_8d
    move v6, v10

    .line 138
    :goto_8e
    const-string v13, "android.intent.action.MAIN"

    if-eqz v4, :cond_ea

    if-eqz v7, :cond_ea

    .line 139
    nop

    .line 140
    :try_start_95
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_95 .. :try_end_9a} :catch_126
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9a} :catch_121

    .line 142
    const v9, 0xc2000

    :try_start_9d
    invoke-virtual {v2, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4
    :try_end_a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9d .. :try_end_a1} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9d .. :try_end_a1} :catch_126
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a1} :catch_121

    .line 160
    goto :goto_b7

    .line 146
    :catch_a2
    move-exception v8

    .line 147
    :try_start_a3
    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v10

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 149
    new-instance v14, Landroid/content/ComponentName;

    aget-object v5, v5, v10

    invoke-direct {v14, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a3 .. :try_end_b2} :catch_126
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_b2} :catch_121

    .line 151
    :try_start_b2
    invoke-virtual {v2, v14, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4
    :try_end_b6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b2 .. :try_end_b6} :catch_cd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b2 .. :try_end_b6} :catch_126
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b6} :catch_121

    .line 159
    move-object v8, v14

    .line 162
    :goto_b7
    :try_start_b7
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 165
    invoke-virtual {v4, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    goto :goto_f2

    .line 155
    :catch_cd
    move-exception v5

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add bookmark: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    goto/16 :goto_1c

    .line 166
    :cond_ea
    if-eqz v9, :cond_106

    .line 167
    invoke-static {v13, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 168
    const-string v4, ""

    .line 175
    :goto_f2
    new-instance v7, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    invoke-direct {v7, v4, v5}, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 176
    if-eqz v6, :cond_ff

    .line 177
    iget-object v4, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v4, v12, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_104

    .line 179
    :cond_ff
    iget-object v4, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v4, v12, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    :goto_104
    goto/16 :goto_1c

    .line 170
    :cond_106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to add bookmark for shortcut "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": missing package/class or category attributes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b7 .. :try_end_11f} :catch_126
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_11f} :catch_121

    .line 172
    goto/16 :goto_1c

    .line 184
    :catch_121
    move-exception v2

    .line 185
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12b

    .line 182
    :catch_126
    move-exception v2

    .line 183
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :goto_12a
    nop

    .line 187
    :goto_12b
    return-void
.end method


# virtual methods
.method public getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .registers 6

    .line 81
    nop

    .line 84
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 85
    :goto_8
    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    goto :goto_f

    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    .line 88
    :goto_f
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result p3

    .line 89
    const/4 v1, 0x0

    if-eqz p3, :cond_1d

    .line 90
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    goto :goto_1e

    .line 89
    :cond_1d
    move-object p3, v1

    .line 94
    :goto_1e
    if-nez p3, :cond_31

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    .line 96
    if-eqz p1, :cond_31

    .line 97
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .line 101
    :cond_31
    if-eqz p3, :cond_35

    iget-object v1, p3, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    :cond_35
    return-object v1
.end method
