.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;
.super Landroid/os/AsyncTask;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/util/SparseArray<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field final synthetic val$addUsersWhenLocked:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V
    .registers 3

    .line 189
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->val$addUsersWhenLocked:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 189
    check-cast p1, [Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 193
    aget-object v2, p1, v1

    .line 194
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v3, :cond_12

    return-object v5

    .line 198
    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 200
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v8

    .line 204
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v9, v5

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 205
    iget v10, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, v10, :cond_3f

    move v15, v4

    goto :goto_40

    :cond_3f
    move v15, v1

    :goto_40
    if-eqz v15, :cond_45

    move-object/from16 v19, v12

    goto :goto_47

    :cond_45
    move-object/from16 v19, v9

    :goto_47
    if-nez v8, :cond_4f

    if-eqz v15, :cond_4c

    goto :goto_4f

    :cond_4c
    move/from16 v18, v1

    goto :goto_51

    :cond_4f
    :goto_4f
    move/from16 v18, v4

    .line 210
    :goto_51
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 211
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v9

    if-eqz v9, :cond_70

    .line 214
    new-instance v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v9, v5

    move-object v10, v12

    move v12, v13

    move v13, v15

    move/from16 v15, v16

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    goto :goto_b5

    .line 217
    :cond_70
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 218
    iget v9, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    if-nez v9, :cond_9e

    .line 220
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget v10, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_9e

    .line 223
    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v10, v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/systemui/R$dimen;->max_avatar_size:I

    .line 224
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 225
    invoke-static {v9, v10, v10, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_9e
    move-object v13, v9

    if-eqz v15, :cond_a3

    move v9, v1

    goto :goto_a7

    .line 229
    :cond_a3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 230
    :goto_a7
    new-instance v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v10

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    invoke-virtual {v6, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_b5
    :goto_b5
    move-object/from16 v9, v19

    goto/16 :goto_2c

    .line 236
    :cond_b9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v4, :cond_c1

    if-eqz v5, :cond_ca

    .line 237
    :cond_c1
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const-string v3, "HasSeenMultiUser"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 240
    :cond_ca
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v7, "no_add_user"

    invoke-virtual {v2, v7, v3}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v9, :cond_e7

    .line 243
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_e3

    iget v3, v9, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_e7

    :cond_e3
    if-eqz v2, :cond_e7

    move v3, v4

    goto :goto_e8

    :cond_e7
    move v3, v1

    :goto_e8
    if-eqz v2, :cond_f0

    .line 246
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->val$addUsersWhenLocked:Z

    if-eqz v2, :cond_f0

    move v2, v4

    goto :goto_f1

    :cond_f0
    move v2, v1

    :goto_f1
    if-nez v3, :cond_f5

    if-eqz v2, :cond_f9

    :cond_f5
    if-nez v5, :cond_f9

    move v7, v4

    goto :goto_fa

    :cond_f9
    move v7, v1

    :goto_fa
    if-nez v3, :cond_fe

    if-eqz v2, :cond_10a

    .line 249
    :cond_fe
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    .line 250
    invoke-virtual {v2}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v2

    if-eqz v2, :cond_10a

    move v2, v4

    goto :goto_10b

    :cond_10a
    move v2, v1

    .line 251
    :goto_10b
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->val$addUsersWhenLocked:Z

    xor-int/2addr v3, v4

    .line 253
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_13d

    if-nez v5, :cond_131

    if-eqz v7, :cond_13d

    .line 256
    new-instance v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    move v15, v3

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    .line 259
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 260
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13d

    .line 263
    :cond_131
    iget-boolean v4, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v4, :cond_136

    goto :goto_13a

    :cond_136
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 264
    :goto_13a
    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 268
    :cond_13d
    :goto_13d
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v1

    if-nez v1, :cond_15d

    if-eqz v2, :cond_15d

    .line 269
    new-instance v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v9, v1

    move v15, v3

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    .line 272
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 273
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15d
    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 189
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$202(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 283
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    :cond_c
    return-void
.end method
