.class Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;
.super Landroid/widget/BaseAdapter;
.source "WhiteListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/WhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactListAapter"
.end annotation


# instance fields
.field private mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPersons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/donotdisturb/WhiteListFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;",
            ">;)V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->mPersons:Ljava/util/ArrayList;

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->mActive:Ljava/util/ArrayList;

    .line 105
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->mInflater:Landroid/view/LayoutInflater;

    .line 106
    iput-object p3, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->mPersons:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->mPersons:Ljava/util/ArrayList;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_a
    return p0
.end method

.method public getItem(I)Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->mPersons:Ljava/util/ArrayList;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;

    :goto_c
    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->getItem(I)Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->mPersons:Ljava/util/ArrayList;

    if-nez p0, :cond_7

    const-wide/16 p0, 0x0

    goto :goto_11

    :cond_7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;->access$000(Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;)J

    move-result-wide p0

    :goto_11
    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p2, :cond_2b

    .line 128
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00cf

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 129
    new-instance p3, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ViewHolder;

    invoke-direct {p3}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ViewHolder;-><init>()V

    const v0, 0x7f0a01a0

    .line 130
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ViewHolder;->contactName:Landroid/widget/TextView;

    const v0, 0x7f0a01f5

    .line 131
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ViewHolder;->deleteView:Landroid/widget/ImageView;

    .line 132
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_31

    .line 134
    :cond_2b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ViewHolder;

    .line 136
    :goto_31
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->mPersons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;

    .line 137
    iget-object v0, p3, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ViewHolder;->contactName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;->access$100(Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iput-object p1, p3, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ViewHolder;->person:Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;

    .line 139
    iget-object v0, p3, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ViewHolder;->deleteView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 140
    iget-object p1, p3, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ViewHolder;->deleteView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 149
    instance-of v0, p1, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;

    if-nez v0, :cond_b

    goto :goto_2a

    .line 153
    :cond_b
    check-cast p1, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;

    .line 155
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->this$0:Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 155
    invoke-static {p0, v0, p1, v1}, Lcom/meizu/settings/donotdisturb/WhiteListFragment;->access$200(Lcom/meizu/settings/donotdisturb/WhiteListFragment;ILjava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 150
    :cond_2a
    :goto_2a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete contact error tag = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WhiteListFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 2

    .line 161
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactListAapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
