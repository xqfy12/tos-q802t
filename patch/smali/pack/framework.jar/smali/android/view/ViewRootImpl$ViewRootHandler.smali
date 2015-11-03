.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 2974
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2977
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3025
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2979
    :pswitch_1
    const-string v0, "MSG_INVALIDATE"

    goto :goto_0

    .line 2981
    :pswitch_2
    const-string v0, "MSG_INVALIDATE_RECT"

    goto :goto_0

    .line 2983
    :pswitch_3
    const-string v0, "MSG_DIE"

    goto :goto_0

    .line 2985
    :pswitch_4
    const-string v0, "MSG_RESIZED"

    goto :goto_0

    .line 2987
    :pswitch_5
    const-string v0, "MSG_RESIZED_REPORT"

    goto :goto_0

    .line 2989
    :pswitch_6
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    goto :goto_0

    .line 2991
    :pswitch_7
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    goto :goto_0

    .line 2993
    :pswitch_8
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    goto :goto_0

    .line 2995
    :pswitch_9
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    goto :goto_0

    .line 2997
    :pswitch_a
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    goto :goto_0

    .line 2999
    :pswitch_b
    const-string v0, "MSG_FINISH_INPUT_CONNECTION"

    goto :goto_0

    .line 3001
    :pswitch_c
    const-string v0, "MSG_CHECK_FOCUS"

    goto :goto_0

    .line 3003
    :pswitch_d
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    goto :goto_0

    .line 3005
    :pswitch_e
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    goto :goto_0

    .line 3007
    :pswitch_f
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    goto :goto_0

    .line 3009
    :pswitch_10
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    goto :goto_0

    .line 3011
    :pswitch_11
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    goto :goto_0

    .line 3013
    :pswitch_12
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    goto :goto_0

    .line 3015
    :pswitch_13
    const-string v0, "MSG_DISPATCH_SCREEN_STATE"

    goto :goto_0

    .line 3017
    :pswitch_14
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    goto :goto_0

    .line 3019
    :pswitch_15
    const-string v0, "MSG_DISPATCH_DONE_ANIMATING"

    goto :goto_0

    .line 3021
    :pswitch_16
    const-string v0, "MSG_WINDOW_MOVED"

    goto :goto_0

    .line 3023
    :pswitch_17
    const-string v0, "MSG_FLUSH_LAYER_UPDATES"

    goto :goto_0

    .line 2977
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3030
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 3251
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3032
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 3035
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 3036
    .local v14, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v2, v14, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v3, v14, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v4, v14, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v5, v14, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v6, v14, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 3037
    invoke-virtual {v14}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    goto :goto_0

    .line 3040
    .end local v14    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 3041
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_0

    .line 3044
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 3047
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto :goto_0

    .line 3051
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 3052
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 3061
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_2
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 3062
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 3064
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v8, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v8, Landroid/content/res/Configuration;

    .line 3065
    .local v8, "config":Landroid/content/res/Configuration;
    if-eqz v8, :cond_3

    .line 3066
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 3069
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3070
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3071
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3072
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3074
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3076
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 3077
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 3080
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 3081
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/View;)V

    .line 3084
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 3088
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v8    # "config":Landroid/content/res/Configuration;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 3089
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 3090
    .local v17, "w":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 3091
    .local v11, "h":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 3092
    .local v15, "l":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 3093
    .local v16, "t":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iput v15, v2, Landroid/graphics/Rect;->left:I

    .line 3094
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v3, v15, v17

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 3095
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v16

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 3096
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v3, v16, v11

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 3098
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 3099
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/View;)V

    .line 3101
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 3105
    .end local v11    # "h":I
    .end local v15    # "l":I
    .end local v16    # "t":I
    .end local v17    # "w":I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 3106
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_c

    const/4 v12, 0x1

    .line 3107
    .local v12, "hasWindowFocus":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v12, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 3109
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->profileRendering(Z)V
    invoke-static {v2, v12}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;Z)V

    .line 3111
    if-eqz v12, :cond_7

    .line 3112
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_d

    const/4 v13, 0x1

    .line 3113
    .local v13, "inTouchMode":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z
    invoke-static {v2, v13}, Landroid/view/ViewRootImpl;->access$400(Landroid/view/ViewRootImpl;Z)Z

    .line 3115
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3116
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3118
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v3, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v4, v4, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;)Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/Surface;)Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3136
    .end local v13    # "inTouchMode":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v3}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v3

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 3139
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3140
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 3141
    if-eqz v12, :cond_8

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3143
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 3145
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 3146
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v12}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 3147
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, v12}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    .line 3152
    :cond_9
    if-eqz v12, :cond_b

    .line 3153
    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3154
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v5, :cond_f

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 3160
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3162
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3165
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 3168
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3170
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3171
    if-eqz v12, :cond_0

    .line 3172
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 3106
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v12    # "hasWindowFocus":Z
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 3112
    .restart local v12    # "hasWindowFocus":Z
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 3120
    .restart local v13    # "inTouchMode":Z
    :catch_0
    move-exception v9

    .line 3121
    .local v9, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "ViewRootImpl"

    const-string v3, "OutOfResourcesException locking surface"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3123
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 3124
    const-string v2, "ViewRootImpl"

    const-string v3, "No processes killed for memory; killing self"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3130
    :cond_e
    :goto_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3154
    .end local v9    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v13    # "inTouchMode":Z
    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 3179
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v12    # "hasWindowFocus":Z
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->doDie()V

    goto/16 :goto_0

    .line 3182
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/view/InputEvent;

    .line 3183
    .local v10, "event":Landroid/view/InputEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .line 3189
    .end local v10    # "event":Landroid/view/InputEvent;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/view/KeyEvent;

    .line 3190
    .local v10, "event":Landroid/view/KeyEvent;
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_10

    .line 3194
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x9

    invoke-static {v10, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v10

    .line 3196
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .line 3199
    .end local v10    # "event":Landroid/view/KeyEvent;
    :pswitch_d
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3200
    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 3201
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 3205
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3206
    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 3207
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_0

    .line 3211
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3212
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3217
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/view/DragEvent;

    .line 3218
    .local v10, "event":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v2, v10, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 3219
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V
    invoke-static {v2, v10}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    goto/16 :goto_0

    .line 3222
    .end local v10    # "event":Landroid/view/DragEvent;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    goto/16 :goto_0

    .line 3225
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/content/res/Configuration;

    .line 3226
    .restart local v8    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3227
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 3229
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_0

    .line 3232
    .end local v8    # "config":Landroid/content/res/Configuration;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3233
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->handleScreenStateChange(Z)V

    goto/16 :goto_0

    :cond_12
    const/4 v2, 0x0

    goto :goto_6

    .line 3237
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_0

    .line 3240
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleDispatchDoneAnimating()V

    goto/16 :goto_0

    .line 3243
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3244
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3248
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->flushHardwareLayerUpdates()V

    goto/16 :goto_0

    .line 3127
    .restart local v9    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v12    # "hasWindowFocus":Z
    .restart local v13    # "inTouchMode":Z
    :catch_1
    move-exception v2

    goto/16 :goto_5

    .line 3030
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_3
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_8
        :pswitch_17
    .end packed-switch
.end method
