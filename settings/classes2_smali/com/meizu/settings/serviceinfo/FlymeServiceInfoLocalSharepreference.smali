.class public Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;
.super Ljava/lang/Object;
.source "FlymeServiceInfoLocalSharepreference.java"


# static fields
.field private static instance:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;
    .registers 1

    .line 35
    sget-object v0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->instance:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;

    invoke-direct {v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;-><init>()V

    sput-object v0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->instance:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;

    .line 38
    :cond_b
    sget-object v0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->instance:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;

    return-object v0
.end method


# virtual methods
.method public commitLocalCorporationInfos(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_6f

    .line 89
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6f

    const-string v0, "corporation_infos"

    .line 90
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 92
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 93
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 96
    :goto_16
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_6b

    .line 97
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    const-string v2, "#"

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p0, p0, 0x1

    goto :goto_16

    .line 108
    :cond_6b
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    :cond_6f
    return p0
.end method

.method public commitLocalFixRecords(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_76

    .line 175
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_76

    const-string v0, "records_xml_names"

    .line 176
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x1

    move v2, v1

    move v1, p0

    .line 182
    :goto_19
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_71

    .line 183
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/serviceinfo/Util$FixRecord;

    .line 184
    invoke-virtual {v3}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getFixNumber()Ljava/lang/String;

    move-result-object v4

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-virtual {p1, v4, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 188
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 190
    invoke-virtual {v3}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getFixNumber()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fnumber"

    .line 189
    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-virtual {v3}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getSN()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fsn"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-virtual {v3}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getTime()Ljava/lang/String;

    move-result-object v5

    const-string v6, "foptime"

    .line 192
    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-virtual {v3}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getCStatus()I

    move-result v3

    const-string v5, "cstatus"

    .line 194
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    and-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 198
    :cond_71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    and-int/2addr p0, v2

    :cond_76
    return p0
.end method

.method public commitLocalServiceDetails(Landroid/content/Context;Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)Z
    .registers 12

    const/4 p0, 0x0

    if-eqz p2, :cond_13f

    .line 209
    invoke-virtual {p2}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getFixNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13f

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13f

    .line 211
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 213
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 215
    invoke-virtual {p2}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getFixNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fnumber"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-virtual {p2}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getSN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fsn"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-virtual {p2}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getCStatus()I

    move-result v0

    const-string v1, "cstatus"

    .line 217
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-virtual {p2}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getFixTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "foptime"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-virtual {p2}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getSuggest()Ljava/lang/String;

    move-result-object v0

    const-string v1, "suggest"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-virtual {p2}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getRepairInfoItems()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "#"

    const-string v2, "@"

    if-eqz v0, :cond_86

    .line 224
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_86

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, p0

    .line 226
    :goto_5a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7d

    .line 227
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    .line 228
    invoke-virtual {v5}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v5}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 233
    :cond_7d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "repair_info"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    :cond_86
    invoke-virtual {p2}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getRepairDateItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_c4

    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c4

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, p0

    .line 239
    :goto_98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_bb

    .line 240
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    .line 241
    invoke-virtual {v5}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v5}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_98

    .line 246
    :cond_bb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "repair_date"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    :cond_c4
    invoke-virtual {p2}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getExpenses()Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;

    move-result-object v0

    if-eqz v0, :cond_120

    .line 253
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->getData()Ljava/util/ArrayList;

    move-result-object v4

    .line 255
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->getAmount()Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->getAmountStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_111

    .line 257
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_111

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    :goto_e7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p0, v7, :cond_10a

    .line 261
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    .line 262
    invoke-virtual {v7}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v7}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_e7

    .line 267
    :cond_10a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_111
    const-string p0, "expenses_info"

    .line 269
    invoke-interface {p1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p0, "amount"

    .line 271
    invoke-interface {p1, p0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p0, "amount_str"

    .line 272
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    :cond_120
    invoke-virtual {p2}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getOverAll()I

    move-result p0

    const-string v0, "overall"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-virtual {p2}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getService()I

    move-result p0

    const-string v0, "service"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-virtual {p2}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getSpeed()I

    move-result p0

    const-string p2, "speed"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    :cond_13f
    return p0
.end method

.method public getFixRecordByName(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/serviceinfo/Util$FixRecord;
    .registers 6

    const-string p0, ""

    if-eqz p2, :cond_31

    .line 138
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_31

    const/4 v0, 0x0

    .line 140
    :try_start_b
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "fnumber"

    .line 142
    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "fsn"

    .line 143
    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "foptime"

    .line 144
    invoke-interface {p1, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "cstatus"

    .line 145
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 146
    new-instance v0, Lcom/meizu/settings/serviceinfo/Util$FixRecord;

    invoke-direct {v0, p2, p0, p1, v1}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_2d

    goto :goto_32

    :catch_2d
    move-exception p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return-object v0
.end method

.method public getLocalCStatusById(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getFixRecordByName(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/serviceinfo/Util$FixRecord;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 385
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getCStatus()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    .line 387
    :goto_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getLocalCStatusById , cstatus = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FlymeServiceInfoLocalSharepreference"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getLocalCorporationInfos(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;"
        }
    .end annotation

    const-string p0, "@"

    const/4 v0, 0x0

    :try_start_3
    const-string v1, "corporation_infos"

    const/4 v2, 0x0

    .line 45
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 47
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_9e

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_9e

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_9a

    .line 54
    :try_start_1b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move v3, v2

    .line 55
    :goto_1f
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-ge v3, v4, :cond_95

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 57
    array-length v5, v4
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_41} :catch_97

    if-lez v5, :cond_92

    const-string v6, "#"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-le v5, v7, :cond_72

    .line 61
    :try_start_49
    aget-object v5, v4, v2

    .line 62
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 63
    aget-object v10, v4, v7

    invoke-virtual {v10, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_89

    .line 64
    aget-object v4, v4, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v8

    goto :goto_8a

    .line 67
    :cond_72
    aget-object v5, v4, v2

    .line 68
    aget-object v9, v4, v8

    .line 69
    aget-object v7, v4, v8

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 70
    aget-object v4, v4, v8

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 71
    aget-object v9, v4, v2

    .line 72
    aget-object v4, v4, v8

    goto :goto_8a

    :cond_89
    move-object v4, v0

    .line 75
    :goto_8a
    new-instance v6, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    invoke-direct {v6, v5, v9, v4}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_92} :catch_97

    :cond_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_95
    move-object v0, v1

    goto :goto_9e

    :catch_97
    move-exception p0

    move-object v0, v1

    goto :goto_9b

    :catch_9a
    move-exception p0

    .line 81
    :goto_9b
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9e
    :goto_9e
    return-object v0
.end method

.method public getLocalFixRecords(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getLocalRecordsXMLNames(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 120
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_34

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_30

    const/4 v0, 0x0

    .line 122
    :goto_13
    :try_start_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 123
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    invoke-virtual {p0, p1, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getFixRecordByName(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/serviceinfo/Util$FixRecord;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 126
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_28} :catch_2d

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2b
    move-object v0, v2

    goto :goto_34

    :catch_2d
    move-exception p0

    move-object v0, v2

    goto :goto_31

    :catch_30
    move-exception p0

    .line 131
    :goto_31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_34
    :goto_34
    return-object v0
.end method

.method public getLocalRecordsXMLNames(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v0, "records_xml_names"

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 160
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 161
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 162
    :goto_18
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v1, v0, :cond_3f

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_3b

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :catch_3b
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    return-object p0
.end method

.method public getLocalServiceDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;
    .registers 23

    move-object/from16 v3, p2

    if-eqz v3, :cond_15d

    .line 286
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15d

    const/4 v2, 0x0

    move-object/from16 v0, p1

    .line 287
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v0, "cstatus"

    .line 299
    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v0, -0x1

    const-string v5, "overall"

    .line 300
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v5, "service"

    .line 301
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v5, "speed"

    .line 302
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v5, ""

    const-string v0, "foptime"

    .line 303
    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "suggest"

    .line 304
    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "expenses_info"

    .line 305
    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    const-string v14, "@"

    const-string v15, "#"

    const/16 v16, 0x1

    if-lez v13, :cond_92

    .line 308
    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_92

    .line 309
    array-length v0, v13

    if-lez v0, :cond_92

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 311
    :goto_60
    array-length v0, v13

    if-ge v2, v0, :cond_97

    .line 312
    aget-object v0, v13, v2

    .line 314
    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v17, 0x0

    .line 316
    :try_start_6b
    aget-object v18, v0, v17

    .line 317
    aget-object v0, v0, v16
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6f} :catch_75

    move-object v3, v0

    move-object/from16 p1, v13

    move-object/from16 v0, v18

    goto :goto_7f

    :catch_75
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 p1, v13

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    .line 321
    :goto_7f
    new-instance v13, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    invoke-direct {v13, v0, v3}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, p1

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v3, p2

    goto :goto_60

    :cond_92
    const/4 v1, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 325
    :cond_97
    new-instance v13, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;

    invoke-direct {v13, v6, v1}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "amount"

    .line 326
    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->setAmount(Ljava/lang/String;)V

    const-string v0, "amount_str"

    .line 328
    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->setAmountStr(Ljava/lang/String;)V

    const-string v0, "repair_info"

    .line 331
    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_fa

    .line 334
    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_fa

    .line 335
    array-length v0, v1

    if-lez v0, :cond_fa

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 337
    :goto_c9
    array-length v0, v1

    if-ge v3, v0, :cond_f8

    .line 338
    aget-object v0, v1, v3

    .line 340
    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    .line 342
    :try_start_d3
    aget-object v18, v0, v6

    .line 343
    aget-object v0, v0, v16
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d7} :catch_dd

    move-object v6, v0

    move-object/from16 p1, v1

    move-object/from16 v0, v18

    goto :goto_e7

    :catch_dd
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 p1, v1

    move-object/from16 v0, v18

    move-object/from16 v6, v19

    .line 347
    :goto_e7
    new-instance v1, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    invoke-direct {v1, v0, v6}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    goto :goto_c9

    :cond_f8
    move-object v6, v2

    goto :goto_fb

    :cond_fa
    const/4 v6, 0x0

    :goto_fb
    const-string v0, "repair_date"

    .line 352
    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_147

    .line 355
    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_147

    .line 356
    array-length v0, v1

    if-lez v0, :cond_147

    .line 357
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 358
    :goto_116
    array-length v0, v1

    if-ge v3, v0, :cond_145

    .line 359
    aget-object v0, v1, v3

    .line 361
    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    .line 363
    :try_start_120
    aget-object v18, v0, v15

    .line 364
    aget-object v0, v0, v16
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_124} :catch_12a

    move-object v15, v0

    move-object/from16 p1, v1

    move-object/from16 v0, v18

    goto :goto_134

    :catch_12a
    move-exception v0

    .line 366
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 p1, v1

    move-object/from16 v0, v18

    move-object/from16 v15, v19

    .line 368
    :goto_134
    new-instance v1, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    invoke-direct {v1, v0, v15}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move-object/from16 v18, v0

    move-object/from16 v19, v15

    goto :goto_116

    :cond_145
    move-object v0, v2

    goto :goto_148

    :cond_147
    const/4 v0, 0x0

    :goto_148
    const-string v1, "fsn"

    .line 373
    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    new-instance v14, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    move-object v1, v14

    move-object/from16 v3, p2

    move-object v4, v13

    move-object v5, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v11}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIILjava/lang/String;)V

    .line 376
    invoke-virtual {v14, v12}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->setSuggest(Ljava/lang/String;)V

    goto :goto_15e

    :cond_15d
    const/4 v14, 0x0

    :goto_15e
    return-object v14
.end method
