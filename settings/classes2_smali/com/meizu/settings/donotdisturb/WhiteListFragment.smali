.class public Lcom/meizu/settings/donotdisturb/WhiteListFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "WhiteListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;,
        Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;,
        Lcom/meizu/settings/donotdisturb/WhiteListFragment$ViewHolder;,
        Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;,
        Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;
    }
.end annotation


# instance fields
.field private mAddContactButton:Landroid/widget/TextView;

.field private mContactList:Landroid/widget/ListView;

.field private mContactListAapter:Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;

.field private mContactUIHandler:Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;

.field private mContactView:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHandler:Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRootView:Landroid/view/View;

.field private mUserDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSelectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserSelectList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserDeleteList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/app/ProgressDialog;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/meizu/settings/donotdisturb/WhiteListFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/meizu/settings/donotdisturb/WhiteListFragment;I)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->startAsyncQuery(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/donotdisturb/WhiteListFragment;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->updateContactsWhiteList(ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/donotdisturb/WhiteListFragment;I)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->addNewWhiteListPerson(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserSelectList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/donotdisturb/WhiteListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserSelectList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/widget/ListView;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mContactList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/widget/TextView;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mEmptyView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/widget/ImageView;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mContactView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mContactListAapter:Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;

    return-object p0
.end method

.method static synthetic access$802(Lcom/meizu/settings/donotdisturb/WhiteListFragment;Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;)Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mContactListAapter:Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mContactUIHandler:Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;

    return-object p0
.end method

.method private addNewWhiteListPerson(I)V
    .registers 10

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "flyme.intent.action.MULTIPLE_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.dir/contact"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserSelectList:Ljava/util/ArrayList;

    if-eqz v1, :cond_45

    .line 230
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_45

    .line 231
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    .line 232
    :goto_1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_40

    .line 233
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;

    .line 234
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 235
    invoke-virtual {v4}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "_id"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_40
    const-string v1, "com.android.contacts.extra.MULTIPLE_PICK_DATAS"

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 241
    :cond_45
    :try_start_45
    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_48
    .catch Landroid/content/ActivityNotFoundException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception p0

    .line 243
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_4d
    return-void
.end method

.method private insertWhiteListData(Landroid/content/Intent;)V
    .registers 22

    move-object/from16 v0, p0

    if-nez p1, :cond_5

    return-void

    .line 384
    :cond_5
    iget-object v1, v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 385
    iget-object v1, v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserDeleteList:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserSelectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserSelectList:Ljava/util/ArrayList;

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2c

    const-string v5, ",  i="

    const-string v6, ",  loop="

    const-string v8, "_id IN ("

    const-string v9, "WhiteListFragment"

    const/4 v10, 0x0

    const/16 v11, 0x3e6

    const/4 v12, 0x1

    if-eqz v1, :cond_126

    const-string v13, "com.android.contacts.extra.MULTIPLE_PICK_DATAS"

    .line 395
    invoke-virtual {v1, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_126

    .line 396
    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_126

    .line 401
    array-length v13, v1

    if-lez v13, :cond_126

    .line 402
    array-length v13, v1

    div-int/2addr v13, v11

    add-int/2addr v13, v12

    move v14, v10

    :goto_46
    if-ge v14, v13, :cond_126

    .line 404
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 405
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v13, -0x1

    if-ge v14, v15, :cond_55

    new-array v15, v11, [Ljava/lang/String;

    goto :goto_59

    .line 410
    :cond_55
    array-length v15, v1

    rem-int/2addr v15, v11

    new-array v15, v15, [Ljava/lang/String;

    .line 413
    :goto_59
    array-length v11, v15

    if-ge v10, v11, :cond_f0

    mul-int/lit16 v11, v14, 0x3e6

    add-int/2addr v11, v10

    .line 415
    aget-object v16, v1, v11

    move-object/from16 v12, v16

    check-cast v12, Landroid/content/ContentValues;

    const-string v7, "display_name"

    .line 416
    invoke-virtual {v12, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 417
    aget-object v12, v1, v11

    check-cast v12, Landroid/content/ContentValues;

    const-string v4, "phone_number"

    .line 418
    invoke-virtual {v12, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 420
    aget-object v11, v1, v11

    check-cast v11, Landroid/content/ContentValues;

    const-string v12, "_id"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 421
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    if-eqz v10, :cond_88

    .line 423
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_88
    const/16 v3, 0x3f

    .line 425
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v10

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    const-string v1, "insertWhiteListData, update id: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v15, v10

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v1, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;

    invoke-direct {v1, v7, v4, v11, v12}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 429
    iget-object v3, v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;

    if-eqz v4, :cond_c2

    .line 430
    invoke-virtual {v4}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;->getId()J

    move-result-wide v18

    cmp-long v7, v18, v11

    if-nez v7, :cond_c2

    .line 431
    iget-object v3, v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 435
    :cond_dd
    iget-object v3, v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 436
    iget-object v3, v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserSelectList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v17

    const/16 v3, 0x2c

    const/4 v12, 0x1

    goto/16 :goto_59

    :cond_f0
    move-object/from16 v17, v1

    const/16 v1, 0x29

    .line 439
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    array-length v1, v15

    if-lez v1, :cond_11a

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertWhiteListData, update sql: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v15}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->updateContactsWhiteList(ILjava/lang/String;[Ljava/lang/String;)V

    :cond_11a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v17

    const/16 v3, 0x2c

    const/4 v10, 0x0

    const/16 v11, 0x3e6

    const/4 v12, 0x1

    goto/16 :goto_46

    .line 450
    :cond_126
    iget-object v1, v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1d3

    .line 451
    iget-object v1, v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x3e6

    div-int/2addr v1, v3

    const/4 v4, 0x1

    add-int/2addr v1, v4

    const/4 v4, 0x0

    :goto_13a
    if-ge v4, v1, :cond_1d3

    .line 454
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v1, -0x1

    if-ge v4, v7, :cond_14e

    new-array v7, v3, [Ljava/lang/String;

    goto :goto_157

    .line 460
    :cond_14e
    iget-object v7, v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    rem-int/2addr v7, v3

    new-array v7, v7, [Ljava/lang/String;

    :goto_157
    const/4 v10, 0x0

    .line 463
    :goto_158
    array-length v11, v7

    if-ge v10, v11, :cond_1a1

    .line 464
    iget-object v11, v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mUserDeleteList:Ljava/util/ArrayList;

    mul-int/lit16 v12, v4, 0x3e6

    add-int/2addr v12, v10

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;

    .line 465
    invoke-virtual {v11}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;->getId()J

    move-result-wide v11

    .line 466
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertWhiteListData, delete id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v7, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x2c

    if-eqz v10, :cond_193

    .line 468
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_193
    const/16 v14, 0x3f

    .line 470
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_158

    :cond_1a1
    const/16 v10, 0x29

    const/16 v13, 0x2c

    const/16 v14, 0x3f

    .line 473
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    array-length v11, v7

    if-lez v11, :cond_1ce

    .line 475
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "insertWhiteListData, delete sql: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v0, v12, v11, v7}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->updateContactsWhiteList(ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_1cf

    :cond_1ce
    const/4 v12, 0x0

    :goto_1cf
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13a

    :cond_1d3
    return-void
.end method

.method private startAsyncQuery(I)V
    .registers 11

    .line 358
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mHandler:Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;

    invoke-virtual {v0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 359
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mHandler:Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "_id"

    const-string v0, "display_name"

    const-string v2, "phone_number"

    const-string v3, "photo_uri"

    filled-new-array {p0, v0, v2, v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const-string v6, "contact_type=1"

    const/4 v7, 0x0

    const-string v8, "display_name_alt"

    move v2, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateContactsWhiteList(ILjava/lang/String;[Ljava/lang/String;)V
    .registers 11

    .line 374
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 375
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "contact_type"

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mHandler:Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/16 v0, 0x64

    if-eq p1, v0, :cond_9

    const/16 v0, 0x65

    if-eq p1, v0, :cond_9

    goto :goto_f

    :cond_9
    const/4 p1, -0x1

    if-ne p2, p1, :cond_f

    .line 214
    invoke-direct {p0, p3}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->insertWhiteListData(Landroid/content/Intent;)V

    :cond_f
    :goto_f
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 174
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 175
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->setHasWhiteNavigationbar(Z)V

    .line 176
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 177
    new-instance p1, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;

    invoke-direct {p1, p0}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;-><init>(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)V

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mContactUIHandler:Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;

    .line 178
    new-instance p1, Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;-><init>(Lcom/meizu/settings/donotdisturb/WhiteListFragment;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mHandler:Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const/4 p3, 0x0

    const v0, 0x7f0d00d0

    .line 184
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mRootView:Landroid/view/View;

    .line 185
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mRootView:Landroid/view/View;

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mContactList:Landroid/widget/ListView;

    .line 186
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mContactList:Landroid/widget/ListView;

    .line 187
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPadding(Landroid/content/Context;[IZ)Landroid/widget/ListView$DividerPadding;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 189
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0a006f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mAddContactButton:Landroid/widget/TextView;

    .line 190
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mAddContactButton:Landroid/widget/TextView;

    new-instance p2, Lcom/meizu/settings/donotdisturb/WhiteListFragment$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$1;-><init>(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0a024d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mEmptyView:Landroid/widget/TextView;

    .line 198
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0a0382

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mContactView:Landroid/widget/ImageView;

    .line 199
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 204
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/16 p1, 0x3e8

    .line 205
    invoke-direct {p0, p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->startAsyncQuery(I)V

    return-void
.end method
