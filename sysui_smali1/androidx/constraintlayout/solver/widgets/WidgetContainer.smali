.class public Landroidx/constraintlayout/solver/widgets/WidgetContainer;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source "WidgetContainer.java"


# instance fields
.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 3

    .line 72
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 74
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    .line 75
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->remove(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 77
    :cond_14
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    return-void
.end method

.method public getRootConstraintContainer()Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .registers 4

    .line 106
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 108
    instance-of v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_b

    .line 109
    check-cast p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz v0, :cond_1b

    .line 113
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 114
    instance-of v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v2, :cond_19

    .line 115
    move-object p0, v0

    check-cast p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    :cond_19
    move-object v0, v1

    goto :goto_c

    :cond_1b
    return-object p0
.end method

.method public layout()V
    .registers 5

    .line 265
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->updateDrawPosition()V

    .line 266
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    return-void

    .line 269
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_23

    .line 271
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 272
    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    if-eqz v3, :cond_20

    .line 273
    check-cast v2, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->layout()V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_23
    return-void
.end method

.method public remove(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 2

    .line 86
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 87
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    return-void
.end method

.method public removeAllChildren()V
    .registers 1

    .line 289
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->reset()V

    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V
    .registers 5

    .line 280
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V

    .line 281
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 283
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 284
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public setOffset(II)V
    .registers 6

    .line 233
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 234
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_a
    if-ge p2, p1, :cond_22

    .line 236
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 237
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRootX()I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRootY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOffset(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_22
    return-void
.end method

.method public updateDrawPosition()V
    .registers 6

    .line 247
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 248
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    return-void

    .line 251
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_2c

    .line 253
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 254
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v3

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 255
    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-nez v3, :cond_29

    .line 256
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2c
    return-void
.end method
