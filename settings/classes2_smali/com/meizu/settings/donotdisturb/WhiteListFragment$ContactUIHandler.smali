.class Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;
.super Landroid/os/Handler;
.source "WhiteListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/WhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    goto/16 :goto_91

    .line 270
    :cond_7
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_17

    const-string p0, "WhiteListFragment"

    const-string p1, "update ui erro"

    .line 271
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 274
    :cond_17
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$402(Lcom/meizu/settings/donotdisturb/WhiteListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 275
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$400(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_4b

    .line 276
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$500(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$600(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$700(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_91

    .line 280
    :cond_4b
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$500(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$600(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$700(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    new-instance v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {v2}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$400(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;-><init>(Lcom/meizu/settings/donotdisturb/WhiteListFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p1, v0}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$802(Lcom/meizu/settings/donotdisturb/WhiteListFragment;Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;)Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;

    .line 284
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$500(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_91

    .line 285
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$500(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactUIHandler;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$800(Lcom/meizu/settings/donotdisturb/WhiteListFragment;)Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_91
    :goto_91
    return-void
.end method
