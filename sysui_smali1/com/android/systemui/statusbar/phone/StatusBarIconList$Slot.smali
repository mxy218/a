.class public Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
.super Ljava/lang/Object;
.source "StatusBarIconList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slot"
.end annotation


# instance fields
.field private mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

.field private final mName:Ljava/lang/String;

.field private mSubSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    return-void
.end method

.method private getIndexForTag(I)I
    .registers 4

    const/4 v0, 0x0

    .line 190
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 192
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v1

    if-ne v1, p1, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method private setSubSlot(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;I)V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    .line 175
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 180
    :cond_11
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getIndexForTag(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_19

    return-void

    .line 186
    :cond_19
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private subSlotsString()Ljava/lang/String;
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    .line 282
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " subSlots"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addHolder(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .registers 3

    .line 146
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v0

    if-nez v0, :cond_9

    .line 148
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    goto :goto_c

    .line 150
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->setSubSlot(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;I)V

    :goto_c
    return-void
.end method

.method public clear()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 169
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    :cond_9
    return-void
.end method

.method public getHolderForTag(I)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .registers 4

    if-nez p1, :cond_5

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    return-object p0

    .line 134
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-eqz p0, :cond_20

    .line 135
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 136
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v1

    if-ne v1, p1, :cond_d

    return-object v0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHolderList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    if-eqz v1, :cond_c

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-eqz p0, :cond_13

    .line 266
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_13
    return-object v0
.end method

.method public getHolderListInViewOrder()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    .line 241
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_1f

    .line 242
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 246
    :cond_1f
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    if-eqz p0, :cond_26

    .line 247
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public hasIconsInSlot()Z
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 202
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 204
    :cond_c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_13

    move v0, v1

    :cond_13
    return v0
.end method

.method public numberOfIcons()I
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    .line 209
    :goto_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez p0, :cond_c

    return v0

    .line 211
    :cond_c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public removeForTag(I)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 156
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    goto :goto_12

    .line 158
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getIndexForTag(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_12
    :goto_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->subSlotsString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "(%s) %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public viewIndexOffsetForTag(I)I
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 224
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez p1, :cond_d

    return v0

    .line 229
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getIndexForTag(I)I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
