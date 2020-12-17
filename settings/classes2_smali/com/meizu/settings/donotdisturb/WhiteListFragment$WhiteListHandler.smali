.class final Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;
.super Landroid/content/AsyncQueryHandler;
.source "WhiteListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/WhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WhiteListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/donotdisturb/WhiteListFragment;Landroid/content/ContentResolver;)V
    .registers 3

    .line 302
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    .line 303
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 8

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_6

    goto/16 :goto_83

    :cond_6
    if-eqz p3, :cond_6c

    .line 310
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_6c

    .line 311
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, -0x1

    .line 312
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 313
    :goto_17
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_59

    const-string p2, "display_name"

    .line 315
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 314
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "phone_number"

    .line 317
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 316
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id"

    .line 318
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 319
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 320
    iget-object v3, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_50

    const p2, 0x7f120ccf

    .line 322
    invoke-virtual {v3, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 325
    :cond_50
    new-instance v3, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;

    invoke-direct {v3, p2, v0, v1, v2}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 327
    :cond_59
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 328
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p2}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$900(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;

    move-result-object p2

    const/4 p3, 0x1

    .line 329
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 330
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 333
    :cond_6c
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$1000(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 334
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$1000(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 335
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$1002(Lcom/meizu/settings/donotdisturb/WhiteListFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_83
    :goto_83
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 4

    const/16 p2, 0x3ea

    if-eq p1, p2, :cond_5

    goto :goto_23

    .line 347
    :cond_5
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    const/16 p2, 0x3e8

    invoke-static {p1, p2}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$1100(Lcom/meizu/settings/donotdisturb/WhiteListFragment;I)V

    .line 348
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$1000(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 349
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$1000(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 350
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$WhiteListHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$1002(Lcom/meizu/settings/donotdisturb/WhiteListFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_23
    :goto_23
    return-void
.end method
