.class Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;
.super Lflyme/support/v7/widget/RecyclerView$Adapter;
.source "MzDonotDisturbScheduleList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduleListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflyme/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mScheduleRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)V
    .registers 2

    .line 384
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$1;)V
    .registers 3

    .line 384
    invoke-direct {p0, p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 444
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->mScheduleRules:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_a
    return p0
.end method

.method public getItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->mScheduleRules:Ljava/util/List;

    return-object p0
.end method

.method public onBindViewHolder(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;I)V
    .registers 9

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MzDonotDisturbScheduleList"

    invoke-static {v2, v1, v0}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 411
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->mScheduleRules:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->mScheduleRules:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;

    iget-object v0, v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->id:Ljava/lang/String;

    .line 413
    iget-object v2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->mScheduleRules:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;

    iget-object v2, v2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->rule:Landroid/app/AutomaticZenRule;

    .line 415
    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v3

    .line 416
    iget-object v4, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v4, v3}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1100(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v4

    .line 417
    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->access$800(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v4, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v4, v3}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v3

    .line 419
    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->access$900(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->access$1000(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;)Lcom/meizu/common/widget/Switch;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 424
    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->access$1000(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;)Lcom/meizu/common/widget/Switch;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 425
    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->access$1000(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;)Lcom/meizu/common/widget/Switch;

    move-result-object v3

    new-instance v4, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter$1;

    invoke-direct {v4, p0, p2, v2, v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter$1;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;ILandroid/app/AutomaticZenRule;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 437
    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->access$1000(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;)Lcom/meizu/common/widget/Switch;

    move-result-object p1

    .line 438
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1300(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Z

    move-result p0

    if-eqz p0, :cond_85

    const/16 v1, 0x8

    .line 437
    :cond_85
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 384
    check-cast p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->onBindViewHolder(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;
    .registers 5

    const/4 p2, 0x0

    const-string v0, "MzDonotDisturbScheduleList"

    const-string v1, "onCreateViewHolder"

    .line 398
    invoke-static {v0, p2, v1}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$700(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01ce

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 401
    new-instance p2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-direct {p2, p0, p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Landroid/view/View;)V

    const p0, 0x7f0a060b

    .line 402
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p2, p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->access$802(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const p0, 0x7f0a05d6

    .line 403
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p2, p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->access$902(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const p0, 0x7f0a060c

    .line 404
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/meizu/common/widget/Switch;

    invoke-static {p2, p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->access$1002(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;Lcom/meizu/common/widget/Switch;)Lcom/meizu/common/widget/Switch;

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 384
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public updateSortedRules(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "MzDonotDisturbScheduleList"

    const-string v2, "updateSortedRules"

    .line 388
    invoke-static {v1, v0, v2}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->mScheduleRules:Ljava/util/List;

    .line 390
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$600(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 391
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$600(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_26

    :cond_24
    const/16 v0, 0x8

    :goto_26
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 393
    :cond_29
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
