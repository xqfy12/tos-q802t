.class final Landroid/view/ViewRootImpl$ViewPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPostImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .prologue
    .line 3842
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 3843
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 3844
    return-void
.end method

.method private processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3993
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 3996
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3997
    const/4 v1, 0x1

    .line 3999
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 7
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 3866
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/KeyEvent;

    .line 3868
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_0

    .line 3871
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->handleDispatchDoneAnimating()V

    .line 3875
    :cond_0
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 3971
    :cond_1
    :goto_0
    return v4

    .line 3879
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3884
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-static {v6}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3888
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 3889
    goto :goto_0

    .line 3891
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3897
    :cond_4
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v6, v1}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v5

    .line 3898
    goto :goto_0

    .line 3900
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3905
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_b

    .line 3906
    const/4 v0, 0x0

    .line 3907
    .local v0, "direction":I
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 3936
    :cond_6
    :goto_1
    if-eqz v0, :cond_b

    .line 3937
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3938
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_a

    .line 3939
    invoke-virtual {v2, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    .line 3940
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_9

    if-eq v3, v2, :cond_9

    .line 3944
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3945
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 3946
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3948
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v6}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3951
    :cond_7
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3952
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    move v4, v5

    .line 3954
    goto/16 :goto_0

    .line 3909
    .end local v2    # "focused":Landroid/view/View;
    .end local v3    # "v":Landroid/view/View;
    :sswitch_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3910
    const/16 v0, 0x11

    goto :goto_1

    .line 3914
    :sswitch_1
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3915
    const/16 v0, 0x42

    goto :goto_1

    .line 3919
    :sswitch_2
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3920
    const/16 v0, 0x21

    goto :goto_1

    .line 3924
    :sswitch_3
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3925
    const/16 v0, 0x82

    goto :goto_1

    .line 3929
    :sswitch_4
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3930
    const/4 v0, 0x2

    goto :goto_1

    .line 3931
    :cond_8
    invoke-virtual {v1, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3932
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 3959
    .restart local v2    # "focused":Landroid/view/View;
    .restart local v3    # "v":Landroid/view/View;
    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v2, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    .line 3960
    goto/16 :goto_0

    .line 3964
    .end local v3    # "v":Landroid/view/View;
    :cond_a
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 3965
    .restart local v3    # "v":Landroid/view/View;
    if-eqz v3, :cond_b

    invoke-virtual {v3, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    .line 3966
    goto/16 :goto_0

    .line 3971
    .end local v0    # "direction":I
    .end local v2    # "focused":Landroid/view/View;
    .end local v3    # "v":Landroid/view/View;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3907
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3975
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 3977
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3978
    const/4 v1, 0x1

    .line 3980
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3984
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 3986
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3987
    const/4 v1, 0x1

    .line 3989
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3848
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_0

    .line 3849
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    .line 3860
    :goto_0
    return v1

    .line 3853
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->handleDispatchDoneAnimating()V

    .line 3854
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    .line 3855
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 3856
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    goto :goto_0

    .line 3857
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 3858
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    goto :goto_0

    .line 3860
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    goto :goto_0
.end method