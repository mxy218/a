.class public Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/serviceinfo/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpensesItem"
.end annotation


# instance fields
.field mAmount:Ljava/lang/String;

.field mAmountStr:Ljava/lang/String;

.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->mTitle:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->mData:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addData(Lcom/meizu/settings/serviceinfo/Util$InfoItem;)V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->mData:Ljava/util/ArrayList;

    .line 156
    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 157
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public getAmount()Ljava/lang/String;
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->mAmount:Ljava/lang/String;

    return-object p0
.end method

.method public getAmountStr()Ljava/lang/String;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->mAmountStr:Ljava/lang/String;

    return-object p0
.end method

.method public getData()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setAmount(Ljava/lang/String;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->mAmount:Ljava/lang/String;

    return-void
.end method

.method public setAmountStr(Ljava/lang/String;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->mAmountStr:Ljava/lang/String;

    return-void
.end method
